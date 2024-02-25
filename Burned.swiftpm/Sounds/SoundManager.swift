//
//  SoundManager.swift
//  Burned
//
//  Created by Gabriel Bruno Meira on 24/02/24.
//

import AVFoundation

class SoundManager {
    
    private var soundDict: [Sound:AVAudioPlayer?] = [:]
    private var currentVolume: Float = 1.0
    private var currentPlayingSound: Sound? = nil
    
    static let shared = SoundManager()
    
    private init() {
        for sound in Sound.allCases {
            soundDict[sound] = getAudioPlayer(sound: sound)
        }
    }
    
    private func getAudioPlayer(sound: Sound) -> AVAudioPlayer? {
        guard let url = Bundle.main.url(
            forResource: sound.rawValue,
            withExtension: ".mp3"
        ) else {
            print("Fail to get url for \(sound)")
            return nil
        }

        var audioPlayer: AVAudioPlayer?
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.prepareToPlay()
            audioPlayer?.volume = currentVolume
            return audioPlayer
        } catch {
            print("Fail to load \(sound)")
            return nil
        }
    }
    
    func isPlaying(sound: Sound) -> Bool {
        guard let audioPlayer = soundDict[sound, default: nil] else { return false }
        return audioPlayer.isPlaying
    }
    
    func playLoop(sound: Sound) {
        stopCurrentPlayingSound()
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.numberOfLoops = -1
        audioPlayer.play()
        currentPlayingSound = sound
    }
    
    func play(sound: Sound, volume: Float = 1.0) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.play()
        currentPlayingSound = sound
    }
    
    func pause(sound: Sound) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.pause()
    }
    
    func stop(sound: Sound) {
        guard let audioPlayer = soundDict[sound, default: nil] else { return }
        audioPlayer.currentTime = 0
        audioPlayer.pause()
    }
    
    func setVolume(_ volume: Float) {
        currentVolume = volume
        for sound in soundDict.values {
            sound?.volume = volume
        }
    }
    
    func stopCurrentPlayingSound() {
        if let currentSound = currentPlayingSound {
            stop(sound: currentSound)
            currentPlayingSound = nil
        }
    }
    
    enum Sound: String, CaseIterable {
        case SeaFuryMonster
        case PrivateEye
        case TremoloTwang
    }
}
