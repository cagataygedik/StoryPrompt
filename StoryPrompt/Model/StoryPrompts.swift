//
//  StoryPrompts.swift
//  StoryPrompt
//
//  Created by Celil Çağatay Gedik on 24.10.2022.
//

import Foundation

class StoryPrompts {

  enum Genre: Int {
    case scifi, horror
  }

  static func promptFor(genre: Genre) -> String {
    let prompts = stubs[genre.rawValue]
    return prompts[Int.random(in: 0 ..< prompts.count)]
  }

  static var stubs = [
    [
      "The <adjective> legion, a horrific cult led by a cyborg <noun>, <verb> <number> missles at Earth.",
      "Harid Ryder is a half human, half <noun>. He <verb> the last remaining <noun> in a <adjective> quest before the sun explodes in <number> days.",
      "Axel is a <noun> who hacks into a <adjective> agency. In it, he <verb> a secret plot to lace <number> hotdogs with <noun> dust.",
      "The Tressal-1 is a <adjective> <noun> on an intergalatic quest. It <verb> from earth, hoping to reach a nearby star system in <number> of decades.",
      "Aliens <verb> on the <noun>. The aliens declare all the water belongs to them. They give <number> of days before they start their <adjective> plan.",
      "A world war ends when a <adjective> <noun> <verb> on the earth. People have only <number> of days to unite or be destroyed."
  ],
  [
    "Unknown to the camp counselers, a <adjective> <noun> stalks their camp. The <noun> <verb> them one at a time until only <number> remain",
    "When Beth answered the <noun>, a <adjective> voice asks her about scary movies. When she guesses wrong, the <noun> <verb> her friends until she guesses right.",
    "At night, Timmy sees a <adjective> <noun> that no one else can see. Timmy <verb> crazy so he confronts the <noun> in the dead of night.",
    "An ancient <noun> is broken The dead <verb> from their graves. The <adjective> dead surround a small town <number> thousand people",
    "A radioactive leak causes a <noun> to grow <number> of feet. The <noun> then <verb> the <adjective> city."
  ]
]

}
