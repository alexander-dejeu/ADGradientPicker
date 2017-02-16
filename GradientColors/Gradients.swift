//
//  webGradients.swift
//  PropertyAnimator
//
//  Created by Alexander Dejeu on 2/14/17.
//  Copyright © 2017 Alexander Dejeu. All rights reserved.
//

import Foundation
import UIKit
/*
 Inspired by https://github.com/itmeo/webgradients
 At time of creation there was only CSS3, .sketch and .PSD files.  I wondered why only web devs could reap
 benifits of this spectacular project!  I ported all of the color gradients over to Swift and added some of my
 own functions that I beilve will be useful for others as well.
 */

class gradients{
  // 001 Warm Flame
  // BL to TR
  static let warmFlameS1 = UIColor.red
  static let warmFlameS2 = UIColor.yellow
  static let warmFlame : [UIColor] = [warmFlameS1, warmFlameS2]
  
  // 002 Night Fade
  // MT to MB
  static let nightFadeS1 = UIColor(red: 251.0/255.0, green: 194.0/255.0, blue: 235.0/255.0, alpha: 1)
  static let nightFadeS2 = UIColor(red: 161.0/255.0, green: 140.0/255.0, blue: 209.0/255.0, alpha: 1)
  static let nightFade : [UIColor] = [nightFadeS1, nightFadeS2]
  
  // 003 Spring Warmth
  // MT to MB
  static let springWarmthS1 = UIColor(red: 255.0/255.0, green: 209.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let springWarmthS2 = UIColor(red: 250.0/255.0, green: 208.0/255.0, blue: 196.0/255.0, alpha: 1)
  static let springWarmth : [UIColor] = [springWarmthS1, springWarmthS2]
  
  // 004 Juicy Peach
  // ML to MR
  static let juicyPeachS1 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let juicyPeachS2 = UIColor(red: 252.0/255.0, green: 182.0/255.0, blue: 159.0/255.0, alpha: 1)
  static let juicyPeach : [UIColor] = [juicyPeachS1, juicyPeachS2]
  
  // 005 Young Passion
  // TODO: COME BACK TO ADD MULTI SUPPORT?
  static let youngPassionS1 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let youngPassionS2 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let youngPassionS3 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let youngPassionS4 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let youngPassion : [UIColor] = [youngPassionS1, youngPassionS2, youngPassionS3, youngPassionS4]
  
  // 006 Lady Lips
  // MT to MB
  static let ladyLipsS1 = UIColor(red: 254.0/255.0, green: 207.0/255.0, blue: 239.0/255.0, alpha: 1)
  static let ladyLipsS2 = UIColor(red: 255.0/255.0, green: 152.0/255.0, blue: 156.0/255.0, alpha: 1)
  static let ladyLips : [UIColor] = [ladyLipsS1, ladyLipsS2]
  
  // 007 Sunny Morning
  // TODO: - Look into these TL to BR but ofset :P
  static let sunnyMorningS1 = UIColor(red: 247.0/255.0, green: 206.0/255.0, blue: 104.0/255.0, alpha: 1)
  static let sunnyMorningS2 = UIColor(red: 251.0/255.0, green: 171.0/255.0, blue: 126.0/255.0, alpha: 1)
  static let sunnyMorning : [UIColor] = [sunnyMorningS1, sunnyMorningS2]
  
  // 008 Rainy Ashville
  // TM to BM
  static let rainyAshvilleS1 = UIColor(red: 165.0/255.0, green: 192.0/255.0, blue: 238.0/255.0, alpha: 1)
  static let rainyAshvilleS2 = UIColor(red: 251.0/255.0, green: 197.0/255.0, blue: 236.0/255.0, alpha: 1)
  static let rainyAshville : [UIColor] = [rainyAshvilleS1, rainyAshvilleS2]
  
  // 009 Frozen Dreams
  // TM to BM
  static let frozenDreamsS1 = UIColor(red: 230.0/255.0, green: 222.0/255.0, blue: 233.0/255.0, alpha: 1)
  static let frozenDreamsS2 = UIColor(red: 253.0/255.0, green: 202.0/255.0, blue: 241.0/255.0, alpha: 1)
  static let frozenDreams : [UIColor] = [frozenDreamsS1, frozenDreamsS2]
  
  // 010 Winter Neva
  // TODO: - Look into these TL to BR but ofset :P
  static let winterNevaS1 = UIColor(red: 161.0/255.0, green: 196.0/255.0, blue: 253.0/255.0, alpha: 1)
  static let winterNevaS2 = UIColor(red: 194.0/255.0, green: 233.0/255.0, blue: 244.0/255.0, alpha: 1)
  static let winterNeva : [UIColor] = [winterNevaS1, winterNevaS2]
  
  // 011 Dusty Grass
  // TODO: - Look into these TL to BR but ofset :P
  static let dustyGrassS1 = UIColor(red: 212.0/255.0, green: 252.0/255.0, blue: 121.0/255.0, alpha: 1)
  static let dustyGrassS2 = UIColor(red: 150.0/255.0, green: 230.0/255.0, blue: 161.0/255.0, alpha: 1)
  static let dustyGrass : [UIColor] = [dustyGrassS1, dustyGrassS2]
  
  // 012 Tempting Azure
  // TODO: - Look into these TL to BR but ofset :P
  static let temptingAzureS1 = UIColor(red: 132.0/255.0, green: 250.0/255.0, blue: 176.0/255.0, alpha: 1)
  static let temptingAzureS2 = UIColor(red: 143.0/255.0, green: 211.0/255.0, blue: 161.0/255.0, alpha: 1)
  static let temptingAzure : [UIColor] = [temptingAzureS1, temptingAzureS2]
  
  // 013 Heavy Rain
  // MT to MB
  static let heavyRainS1 = UIColor(red: 226.0/255.0, green: 235.0/255.0, blue: 240.0/255.0, alpha: 1)
  static let heavyRainS2 = UIColor(red: 207.0/255.0, green: 217.0/255.0, blue: 223.0/255.0, alpha: 1)
  static let heavyRain : [UIColor] = [heavyRainS1, heavyRainS2]
  
  // 014 Amy Crisp
  // TODO: - Look into these TL to BR but ofset :P
  static let amyCrispS1 = UIColor(red: 166.0/255.0, green: 192.0/255.0, blue: 254.0/255.0, alpha: 1)
  static let amyCrispS2 = UIColor(red: 246.0/255.0, green: 128.0/255.0, blue: 132.0/255.0, alpha: 1)
  static let amyCrisp : [UIColor] = [amyCrispS1, amyCrispS2]
  
  // 015 Mean Fruit
  // TODO: - Look into these TL to BR but ofset :P
  static let meanFruitS1 = UIColor(red: 252.0/255.0, green: 203.0/255.0, blue: 144.0/255.0, alpha: 1)
  static let meanFruitS2 = UIColor(red: 213.0/255.0, green: 126.0/255.0, blue: 235.0/255.0, alpha: 1)
  static let meanFruit : [UIColor] = [meanFruitS1, meanFruitS2]
  
  // 016 Deep Blue
  // TODO: - Look into these TL to BR but ofset :P
  static let deepBlueS1 = UIColor(red: 224.0/255.0, green: 195.0/255.0, blue: 252.0/255.0, alpha: 1)
  static let deepBlueS2 = UIColor(red: 142.0/255.0, green: 197.0/255.0, blue: 252.0/255.0, alpha: 1)
  static let deepBlue : [UIColor] = [deepBlueS1, deepBlueS2]
  
  // 017 Ripe Malinka
  // TODO: - Look into these TL to BR but ofset :P
  static let ripeMalinkaS1 = UIColor(red: 240.0/255.0, green: 147.0/255.0, blue: 251.0/255.0, alpha: 1)
  static let ripeMalinkaS2 = UIColor(red: 245.0/255.0, green: 87.0/255.0, blue: 108.0/255.0, alpha: 1)
  static let ripeMalinka : [UIColor] = [ripeMalinkaS1, ripeMalinkaS2]
  
  // 018 Cloudy Knoxville
  // TODO: - Look into these TL to BR but ofset :P
  static let cloudyKnoxvilleS1 = UIColor(red: 251.0/255.0, green: 251.0/255.0, blue: 251.0/255.0, alpha: 1)
  static let cloudyKnoxvilleS2 = UIColor(red: 235.0/255.0, green: 237.0/255.0, blue: 238.0/255.0, alpha: 1)
  static let cloudyKnoxville : [UIColor] = [cloudyKnoxvilleS1, cloudyKnoxvilleS2]
  
  // 019 Malibu Beach
  // ML to MR
  static let malibuBeachS1 = UIColor(red: 79.0/255.0, green: 172.0/255.0, blue: 254.0/255.0, alpha: 1)
  static let malibuBeachS2 = UIColor(red: 0.0/255.0, green: 242.0/255.0, blue: 254.0/255.0, alpha: 1)
  static let malibuBeach : [UIColor] = [malibuBeachS1, malibuBeachS2]
  
  // 020 New Life
  // ML to MR
  static let newLifeS1 = UIColor(red: 67.0/255.0, green: 233.0/255.0, blue: 123.0/255.0, alpha: 1)
  static let newLifeS2 = UIColor(red: 56.0/255.0, green: 249.0/255.0, blue: 215.0/255.0, alpha: 1)
  static let newLife : [UIColor] = [newLifeS1, newLifeS2]
  
  // 021 True Sunset
  // ML to MR
  static let trueSunsetS1 = UIColor(red: 250.0/255.0, green: 112.0/255.0, blue: 154.0/255.0, alpha: 1)
  static let trueSunsetS2 = UIColor(red: 254.0/255.0, green: 225.0/255.0, blue: 64.0/255.0, alpha: 1)
  static let trueSunset : [UIColor] = [trueSunsetS1, trueSunsetS2]
  
  // 022 Morpheus Den
  // MT to MB
  static let morpheusDenS1 = UIColor(red: 48.0/255.0, green: 207.0/255.0, blue: 208.0/255.0, alpha: 1)
  static let morpheusDenS2 = UIColor(red: 51.0/255.0, green: 8.0/255.0, blue: 103.0/255.0, alpha: 1)
  static let morpheusDen : [UIColor] = [morpheusDenS1, morpheusDenS2]
  
  // 023 Rare Wind
  // MT to MB
  static let rareWindS1 = UIColor(red: 168.0/255.0, green: 237.0/255.0, blue: 234.0/255.0, alpha: 1)
  static let rareWindS2 = UIColor(red: 254.0/255.0, green: 214.0/255.0, blue: 227.0/255.0, alpha: 1)
  static let rareWind : [UIColor] = [rareWindS1, rareWindS2]
  
  // 024 Near Moon
  // MT to MB
  static let nearMoonS1 = UIColor(red: 94.0/255.0, green: 231.0/255.0, blue: 223.0/255.0, alpha: 1)
  static let nearMoonS2 = UIColor(red: 180.0/255.0, green: 144.0/255.0, blue: 202.0/255.0, alpha: 1)
  static let nearMoon : [UIColor] = [nearMoonS1, nearMoonS2]
  
  // 025 Wild Apple
  // MT to MB
  static let wildAppleS1 = UIColor(red: 254.0/255.0, green: 249.0/255.0, blue: 215.0/255.0, alpha: 1)
  static let wildAppleS2 = UIColor(red: 210.0/255.0, green: 153.0/255.0, blue: 194.0/255.0, alpha: 1)
  static let wildApple : [UIColor] = [wildAppleS1, wildAppleS2]
  
  // 026 Saint Petersburg
  // TL to BR
  static let saintPetersburyS1 = UIColor(red: 245.0/255.0, green: 247.0/255.0, blue: 250.0/255.0, alpha: 1)
  static let saintPetersburyS2 = UIColor(red: 195.0/255.0, green: 207.0/255.0, blue: 226.0/255.0, alpha: 1)
  static let saintPetersbury : [UIColor] = [saintPetersburyS1, saintPetersburyS2]
  
  // 027 Arielle's Smile
  // TODO : Radial thing S1 = Center and S2 equals the outer bound one
  static let arielleSmileS1 = UIColor(red: 22.0/255.0, green: 217.0/255.0, blue: 227.0/255.0, alpha: 1)
  static let arielleSmileS2 = UIColor(red: 70.0/255.0, green: 174.0/255.0, blue: 247.0/255.0, alpha: 1)
  static let arielleSmile : [UIColor] = [arielleSmileS1, arielleSmileS2]
  
  // 028 Plum Plate
  // TL to BR
  static let plumPlateS1 = UIColor(red: 102.0/255.0, green: 126.0/255.0, blue: 234.0/255.0, alpha: 1)
  static let plumPlateS2 = UIColor(red: 118.0/255.0, green: 75.0/255.0, blue: 162.0/255.0, alpha: 1)
  static let plumPlate : [UIColor] = [plumPlateS1, plumPlateS2]
  
  // 029 Everlasting Sky
  // TL to BR
  static let everLastingSkyS1 = UIColor(red: 253.0/255.0, green: 252.0/255.0, blue: 251.0/255.0, alpha: 1)
  static let everLastingSkyS2 = UIColor(red: 226.0/255.0, green: 209.0/255.0, blue: 195.0/255.0, alpha: 1)
  static let everLastingSky : [UIColor] = [everLastingSkyS1, everLastingSkyS2]
  
  // 030 Happy Fisher
  // TODO: - Look into these TL to BR but ofset :P
  static let happyFisherS1 = UIColor(red: 137.0/255.0, green: 247.0/255.0, blue: 254.0/255.0, alpha: 1)
  static let happyFisherS2 = UIColor(red: 102.0/255.0, green: 166.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let happyFisher : [UIColor] = [happyFisherS1, happyFisherS2]
  
  
  
  
}
