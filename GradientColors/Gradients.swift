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
  
  // 016 Light Blue
  // TODO: - Look into these TL to BR but ofset :P
  static let lightBlueS1 = UIColor(red: 224.0/255.0, green: 195.0/255.0, blue: 252.0/255.0, alpha: 1)
  static let lightBlueS2 = UIColor(red: 142.0/255.0, green: 197.0/255.0, blue: 252.0/255.0, alpha: 1)
  static let lightBlue : [UIColor] = [lightBlueS1, lightBlueS2]
  
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
  
  // 031 Blessing
  // MT to MB
  static let blessingS1 = UIColor(red: 209.0/255.0, green: 253.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let blessingS2 = UIColor(red: 253.0/255.0, green: 219.0/255.0, blue: 146.0/255.0, alpha: 1)
  static let blessing : [UIColor] = [blessingS1, blessingS2]
  
  // 032 Sharpeye Eagle
  // MT to MB
  static let sharpeyeEagleS1 = UIColor(red: 177.0/255.0, green: 244.0/255.0, blue: 207.0/255.0, alpha: 1)
  static let sharpeyeEagleS2 = UIColor(red: 152.0/255.0, green: 144.0/255.0, blue: 227.0/255.0, alpha: 1)
  static let sharpeyeEagle : [UIColor] = [sharpeyeEagleS1, sharpeyeEagleS2]
  
  // 033 Ladoga Bottom
  // MT to MB
  static let ladogaBottomS1 = UIColor(red: 217.0/255.0, green: 222.0/255.0, blue: 216.0/255.0, alpha: 1)
  static let ladogaBottomS2 = UIColor(red: 235.0/255.0, green: 192.0/255.0, blue: 253.0/255.0, alpha: 1)
  static let ladogaBottom : [UIColor] = [ladogaBottomS1, ladogaBottomS2]
  
  // 034 Lemon Gate
  // MT to MB
  static let lemonGateS1 = UIColor(red: 249.0/255.0, green: 245.0/255.0, blue: 134.0/255.0, alpha: 1)
  static let lemonGateS2 = UIColor(red: 150.0/255.0, green: 251.0/255.0, blue: 196.0/255.0, alpha: 1)
  static let lemonGate : [UIColor] = [lemonGateS1, lemonGateS2]
  
  // 035 Itmeo Branding
  // TODO: INVESTIGATE because the bottom one goes past the bottom bounds MT to MB
  static let itmeoBrandingS1 = UIColor(red: 42.0/255.0, green: 245.0/255.0, blue: 152.0/255.0, alpha: 1)
  static let itmeoBrandingS2 = UIColor(red: 0.0/255.0, green: 158.0/255.0, blue: 253.0/255.0, alpha: 1)
  static let itmeoBranding : [UIColor] = [itmeoBrandingS1, itmeoBrandingS2]
  
  // 036 Zeus Miracle
  // TODO: INVESTIGATE because the bottom one goes past the bottom bounds MT to MB
  static let zeusMiracleS1 = UIColor(red: 246.0/255.0, green: 243.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let zeusMiracleS2 = UIColor(red: 205.0/255.0, green: 156.0/255.0, blue: 242.0/255.0, alpha: 1)
  static let zeusMiracle : [UIColor] = [zeusMiracleS1, zeusMiracleS2]

  // 037 Old Hat
  // TODO : Radial thing S1 = Center and S2 equals the outer bound one
  static let oldHatS1 = UIColor(red: 252.0/255.0, green: 182.0/255.0, blue: 159.0/255.0, alpha: 1)
  static let oldHatS2 = UIColor(red: 255.0/255.0, green: 236.0/255.0, blue: 210.0/255.0, alpha: 1)
  static let oldHat : [UIColor] = [oldHatS1, oldHatS2]
  
  // 038 Star Wine
  // TODO: COME BACK TO ADD MULTI SUPPORT?
  static let starWineS1 = UIColor(red: 180.0/255.0, green: 101.0/255.0, blue: 218.0/255.0, alpha: 1)
  static let starWineS2 = UIColor(red: 207.0/255.0, green: 108.0/255.0, blue: 201.0/255.0, alpha: 1)
  static let starWineS3 = UIColor(red: 238.0/255.0, green: 96.0/255.0, blue: 156.0/255.0, alpha: 1)
  static let starWineS4 = UIColor(red: 238.0/255.0, green: 96.0/255.0, blue: 156.0/255.0, alpha: 1)
  static let starWine : [UIColor] = [starWineS1, starWineS2, starWineS3, starWineS4]
  
  // 039 Deep Blue
  // ML to MR
  static let deepBlueS1 = UIColor(red: 106.0/255.0, green: 17.0/255.0, blue: 203.0/255.0, alpha: 1)
  static let deepBlueS2 = UIColor(red: 37.0/255.0, green: 117.0/255.0, blue: 252.0/255.0, alpha: 1)
  static let deepBlue : [UIColor] = [deepBlueS1, deepBlueS2]
  
  // 040 Coup de Grace
  // TODO Background, burn, and gradient :O
  
  
  // 041 Happy Acid
  // MT to MB
  static let happyAcidS1 = UIColor(red: 114.0/255.0, green: 175.0/255.0, blue: 211.0/255.0, alpha: 1)
  static let happyAcidS2 = UIColor(red: 55.0/255.0, green: 236.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let happyAcid : [UIColor] = [happyAcidS1, happyAcidS2]
  
  // 042 Awesome Pine
  // MT to MB
  static let awesomePineS1 = UIColor(red: 207.0/255.0, green: 199.0/255.0, blue: 248.0/255.0, alpha: 1)
  static let awesomePineS2 = UIColor(red: 235.0/255.0, green: 187.0/255.0, blue: 167.0/255.0, alpha: 1)
  static let awesomePine : [UIColor] = [awesomePineS1, awesomePineS2]
  
  // 043 New York
  // MT to MB
  static let newYorkS1 = UIColor(red: 172.0/255.0, green: 224.0/255.0, blue: 249.0/255.0, alpha: 1)
  static let newYorkS2 = UIColor(red: 255.0/255.0, green: 241.0/255.0, blue: 235.0/255.0, alpha: 1)
  static let newYork : [UIColor] = [newYorkS1, newYorkS2]

  // 044 Shy Rainbow
  // TODO : Radial thing S1 = Center and S2 equals the outer bound one
  static let shyRainbowS1 = UIColor(red: 177.0/255.0, green: 175.0/255.0, blue: 240.0/255.0, alpha: 1)
  static let shyRainbowS2 = UIColor(red: 131.0/255.0, green: 109.0/255.0, blue: 240.0/255.0, alpha: 1)
  static let shyRainbow : [UIColor] = [shyRainbowS1, shyRainbowS2]
  
  // 045 Loon Crest
  // TODO Background, 2 multiplys, and gradient :O
  
  
  // 046 Mixed Hopes
  // MT to MB
  static let mixedHopesS1 = UIColor(red: 250.0/255.0, green: 113.0/255.0, blue: 205.0/255.0, alpha: 1)
  static let mixedHopesS2 = UIColor(red: 196.0/255.0, green: 113.0/255.0, blue: 245.0/255.0, alpha: 1)
  static let mixedHopes : [UIColor] = [mixedHopesS1, mixedHopesS2]
  
  // 047 Fly High
  // MT to MB
  static let flyHighS1 = UIColor(red: 111.0/255.0, green: 134.0/255.0, blue: 214.0/255.0, alpha: 1)
  static let flyHighS2 = UIColor(red: 72.0/255.0, green: 198.0/255.0, blue: 239.0/255.0, alpha: 1)
  static let flyHigh : [UIColor] = [flyHighS1, flyHighS2]

  // 048 Strong Bliss
  // TODO: COME BACK TO ADD MULTI SUPPORT?
  static let strongBlissS1 = UIColor(red: 247.0/255.0, green: 140.0/255.0, blue: 160.0/255.0, alpha: 1)
  static let strongBlissS2 = UIColor(red: 249.0/255.0, green: 116.0/255.0, blue: 143.0/255.0, alpha: 1)
  static let strongBlissS3 = UIColor(red: 253.0/255.0, green: 134.0/255.0, blue: 140.0/255.0, alpha: 1)
  static let strongBlissS4 = UIColor(red: 254.0/255.0, green: 154.0/255.0, blue: 139.0/255.0, alpha: 1)
  static let strongBliss : [UIColor] = [strongBlissS1, strongBlissS2, strongBlissS3, strongBlissS4]
  
  // 049 Fresh Milk
  // MT to MB
  static let freshMilkS1 = UIColor(red: 245.0/255.0, green: 239.0/255.0, blue: 239.0/255.0, alpha: 1)
  static let freshMilkS2 = UIColor(red: 254.0/255.0, green: 175.0/255.0, blue: 168.0/255.0, alpha: 1)
  static let freshMilk : [UIColor] = [freshMilkS1, freshMilkS2]
  
  // 050 Snow Again
  // MT to MB
  static let snowAgainS1 = UIColor(red: 238.0/255.0, green: 241.0/255.0, blue: 245.0/255.0, alpha: 1)
  static let snowAgainS2 = UIColor(red: 230.0/255.0, green: 233.0/255.0, blue: 240.0/255.0, alpha: 1)
  static let snowAgain : [UIColor] = [snowAgainS1, snowAgainS2]
  
  // 051 February Ink
  // MT to MB
  static let februaryInkS1 = UIColor(red: 231.0/255.0, green: 240.0/255.0, blue: 253.0/255.0, alpha: 1)
  static let februaryInkS2 = UIColor(red: 172.0/255.0, green: 203.0/255.0, blue: 238.0/255.0, alpha: 1)
  static let februaryInk : [UIColor] = [februaryInkS1, februaryInkS2]
  
  // 052 Kind Steel
  // TODO: TL to BR with shift inner
  static let kindSteelS1 = UIColor(red: 251.0/255.0, green: 252.0/255.0, blue: 219.0/255.0, alpha: 1)
  static let kindSteelS2 = UIColor(red: 233.0/255.0, green: 222.0/255.0, blue: 250.0/255.0, alpha: 1)
  static let kindSteel : [UIColor] = [kindSteelS1, kindSteelS2]
  
  // 053 Soft Grass
  // MT to MB
  static let softGrassS1 = UIColor(red: 222.0/255.0, green: 236.0/255.0, blue: 221.0/255.0, alpha: 1)
  static let softGrassS2 = UIColor(red: 193.0/255.0, green: 223.0/255.0, blue: 196.0/255.0, alpha: 1)
  static let softGrass : [UIColor] = [softGrassS1, softGrassS2]
  
  // 054 Grown Early
  // MT to MB
  static let grownEarlyS1 = UIColor(red: 60.0/255.0, green: 186.0/255.0, blue: 146.0/255.0, alpha: 1)
  static let grownEarlyS2 = UIColor(red: 11.0/255.0, green: 163.0/255.0, blue: 96.0/255.0, alpha: 1)
  static let grownEarly : [UIColor] = [grownEarlyS1, grownEarlyS2]
  
  // 055 Sharp Blues
  // MT to MB
  static let sharpBluesS1 = UIColor(red: 0.0/255.0, green: 91.0/255.0, blue: 234.0/255.0, alpha: 1)
  static let sharpBluesS2 = UIColor(red: 0.0/255.0, green: 198.0/255.0, blue: 251.0/255.0, alpha: 1)
  static let sharpBlues : [UIColor] = [sharpBluesS1, sharpBluesS2]
  
  // 056 Shady Water
  // ML to MR
  static let shadyWaterS1 = UIColor(red: 116.0/255.0, green: 235.0/255.0, blue: 213.0/255.0, alpha: 1)
  static let shadyWaterS2 = UIColor(red: 159.0/255.0, green: 172.0/255.0, blue: 230.0/255.0, alpha: 1)
  static let shadyWater : [UIColor] = [shadyWaterS1, shadyWaterS2]
  
  // 057 Dirty Beauty
  // MT to MB
  static let dirtyBeautyS1 = UIColor(red: 186.0/255.0, green: 200.0/255.0, blue: 224.0/255.0, alpha: 1)
  static let dirtyBeautyS2 = UIColor(red: 106.0/255.0, green: 133.0/255.0, blue: 282.0/255.0, alpha: 1)
  static let dirtyBeauty : [UIColor] = [dirtyBeautyS1, dirtyBeautyS2]
  
  // 058 Great Whale
  // MT to MB
  static let greatWhaleS1 = UIColor(red: 105.0/255.0, green: 145.0/255.0, blue: 199.0/255.0, alpha: 1)
  static let greatWhaleS2 = UIColor(red: 163.0/255.0, green: 189.0/255.0, blue: 237.0/255.0, alpha: 1)
  static let greatWhale : [UIColor] = [greatWhaleS1, greatWhaleS2]

  // 059 Teen Notebook
  // MT to MB
  static let teenNotebookS1 = UIColor(red: 251.0/255.0, green: 200.0/255.0, blue: 212.0/255.0, alpha: 1)
  static let teenNotebookS2 = UIColor(red: 151.0/255.0, green: 149.0/255.0, blue: 240.0/255.0, alpha: 1)
  static let teenNotebook : [UIColor] = [teenNotebookS1, teenNotebookS2]
  
  // 060 Polite Rumors
  // TODO: MT to MM to MB
  static let politeRumorsS1 = UIColor(red: 167.0/255.0, green: 166.0/255.0, blue: 203.0/255.0, alpha: 1)
  static let politeRumorsS2 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let politeRumorsS3 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let politeRumors : [UIColor] = [politeRumorsS1, politeRumorsS2, politeRumorsS3]
  
  // 061 Sweet Period Style
  // TODO: SO MANY COLORS MT to MB ADD COLORS
  static let sweetPeriodS1 = UIColor(red: 167.0/255.0, green: 166.0/255.0, blue: 203.0/255.0, alpha: 1)
  static let sweetPeriodS2 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriodS3 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriodS4 = UIColor(red: 167.0/255.0, green: 166.0/255.0, blue: 203.0/255.0, alpha: 1)
  static let sweetPeriodS5 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriodS6 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriodS7 = UIColor(red: 167.0/255.0, green: 166.0/255.0, blue: 203.0/255.0, alpha: 1)
  static let sweetPeriodS8 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriodS9 = UIColor(red: 137.0/255.0, green: 137.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let sweetPeriod : [UIColor] = [politeRumorsS1, politeRumorsS2, politeRumorsS3]
  
  // 062 Wide Matrix Style
  // TODO: SO MANY COLORS MT to MB ADD COLORS
  
  // 063 Soft Cherish Style
  // TODO: Ugh another huge one
  
  // 064 Red Salvation Style
  // MT to MB
  static let redSalvationS1 = UIColor(red: 69.0/255.0, green: 58.0/255.0, blue: 148.0/255.0, alpha: 1)
  static let redSalvationS2 = UIColor(red: 244.0/255.0, green: 59.0/255.0, blue: 71.0/255.0, alpha: 1)
  static let redSalvation : [UIColor] = [redSalvationS1, redSalvationS2]
  
  // 065 Burning Spring Style
  // TODO : Radial thing S1 = Center and S2 equals the outer bound one
  static let BurningSpringS1 = UIColor(red: 113.0/255.0, green: 221.0/255.0, blue: 166.0/255.0, alpha: 1)
  static let BurningSpringS2 = UIColor(red: 112.0/255.0, green: 178.0/255.0, blue: 188.0/255.0, alpha: 1)
  static let BurningSpring : [UIColor] = [BurningSpringS1, BurningSpringS2]

  // 066 Night Party Style
  // MT to MB
  static let nightPartyS1 = UIColor(red: 212.0/255.0, green: 63.0/255.0, blue: 141.0/255.0, alpha: 1)
  static let nightPartyS2 = UIColor(red: 2.0/255.0, green: 80.0/255.0, blue: 197.0/255.0, alpha: 1)
  static let nightParty : [UIColor] = [nightPartyS1, nightPartyS2]
  
  // 067 Sky Glider Style
  // MT to MB
  static let skyGliderS1 = UIColor(red: 110.0/255.0, green: 69.0/255.0, blue: 226.0/255.0, alpha: 1)
  static let skyGliderS2 = UIColor(red: 136.0/255.0, green: 221.0/255.0, blue: 206.0/255.0, alpha: 1)
  static let skyGlider : [UIColor] = [skyGliderS1, skyGliderS2]
  
  // 068 Heaven Peach Style
  // MT to MB
  static let heavenPeachS1 = UIColor(red: 151.0/255.0, green: 217.0/255.0, blue: 225.0/255.0, alpha: 1)
  static let heavenPeachS2 = UIColor(red: 217.0/255.0, green: 175.0/255.0, blue: 217.0/255.0, alpha: 1)
  static let heavenPeach : [UIColor] = [heavenPeachS1, heavenPeachS2]
  
  // 070 Aqua Splash Style
  // TODO: BL with Shift to TR with Shift
  static let aquaSplashS1 = UIColor(red: 19.0/255.0, green: 84.0/255.0, blue: 122.0/255.0, alpha: 1)
  static let aquaSplashS2 = UIColor(red: 128.0/255.0, green: 208.0/255.0, blue: 199.0/255.0, alpha: 1)
  static let aquaSplash : [UIColor] = [aquaSplashS1, aquaSplashS2]
  
  // 071 Above Clouds Style
  // TODO: The Strange Layering thing
  
  // 072 Spiky Naga Style
  // TODO: ADD ALL THE COLORS!!
  
  // 073 Love Kiss Style
  // MT to MB
  static let loveKissS1 = UIColor(red: 255.0/255.0, green: 8.0/255.0, blue: 68.0/255.0, alpha: 1)
  static let loveKissS2 = UIColor(red: 255.0/255.0, green: 177.0/255.0, blue: 153.0/255.0, alpha: 1)
  static let loveKiss : [UIColor] = [loveKissS1, loveKissS2]

  // 074 Sharp Glass Style
  // TODO: The Strange Layering thing
  
  // 075 Clean Mirror Style
  // BL to TR
  static let cleanMirrorS1 = UIColor(red: 147.0/255.0, green: 165.0/255.0, blue: 207.0/255.0, alpha: 1)
  static let cleanMirrorS2 = UIColor(red: 228.0/255.0, green: 239.0/255.0, blue: 233.0/255.0, alpha: 1)
  static let cleanMirror : [UIColor] = [cleanMirrorS1, cleanMirrorS2]
  
  // 076 Premium Dark Style
  // ML to MR
  static let premiumDarkS1 = UIColor(red: 67.0/255.0, green: 67.0/255.0, blue: 67.0/255.0, alpha: 1)
  static let premiumDarkS2 = UIColor(red: 0.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1)
  static let premiumDark : [UIColor] = [premiumDarkS1, premiumDarkS2]
  
  // 077 Cold Evening Style
  // MT to MB
  static let coldEveningS1 = UIColor(red: 107.0/255.0, green: 140.0/255.0, blue: 206.0/255.0, alpha: 1)
  static let coldEveningS2 = UIColor(red: 12.0/255.0, green: 52.0/255.0, blue: 131.0/255.0, alpha: 1)
  static let coldEvening : [UIColor] = [coldEveningS1, coldEveningS2]
  
  // 078 Cochiti Lake Style
  // BL to TR
  static let cochitiLakeS1 = UIColor(red: 245.0/255.0, green: 200.0/255.0, blue: 245.0/255.0, alpha: 1)
  static let cochitiLakeS2 = UIColor(red: 218.0/255.0, green: 221.0/255.0, blue: 250.0/255.0, alpha: 1)
  static let cochitiLakeS3 = UIColor(red: 241.0/255.0, green: 244.0/255.0, blue: 249.0/255.0, alpha: 1)
  static let cochitiLake : [UIColor] = [cochitiLakeS1, cochitiLakeS2, cochitiLakeS3]
  
  // 079 Summer Games Style
  // ML to MR
  static let summerGamesS1 = UIColor(red: 146.0/255.0, green: 254.0/255.0, blue: 157.0/255.0, alpha: 1)
  static let summerGamesS2 = UIColor(red: 0.0/255.0, green: 201.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let summerGames : [UIColor] = [summerGamesS1, summerGamesS2]
  
  // 080 Passionate Bed Style
  // ML to MR
  static let passionateBedS1 = UIColor(red: 255.0/255.0, green: 117.0/255.0, blue: 140.0/255.0, alpha: 1)
  static let passionateBedS2 = UIColor(red: 255.0/255.0, green: 126.0/255.0, blue: 179.0/255.0, alpha: 1)
  static let passionateBed : [UIColor] = [passionateBedS1, passionateBedS2]

  // 081 Mountain Rock Style
  // ML to MR
  static let mountainRockS1 = UIColor(red: 134.0/255.0, green: 143.0/255.0, blue: 150.0/255.0, alpha: 1)
  static let mountainRockS2 = UIColor(red: 89.0/255.0, green: 97.0/255.0, blue: 100.0/255.0, alpha: 1)
  static let mountainRock : [UIColor] = [mountainRockS1, mountainRockS2]
  
  // 082 Desert Hump Style
  // ML to MR
  static let desertHumpS1 = UIColor(red: 223.0/255.0, green: 165.0/255.0, blue: 121.0/255.0, alpha: 1)
  static let desertHumpS2 = UIColor(red: 199.0/255.0, green: 144.0/255.0, blue: 129.0/255.0, alpha: 1)
  static let desertHump : [UIColor] = [desertHumpS1, desertHumpS2]
  
  // 083 Jungle Day Style
  // BL to TR
  static let jungleDayS1 = UIColor(red: 139.0/255.0, green: 170.0/255.0, blue: 170.0/255.0, alpha: 1)
  static let jungleDayS2 = UIColor(red: 174.0/255.0, green: 139.0/255.0, blue: 156.0/255.0, alpha: 1)
  static let jungleDay : [UIColor] = [jungleDayS1, jungleDayS2]
  
  // 084 Phoenix Start Style
  // ML to MR
  static let phoenixStartS1 = UIColor(red: 248.0/255.0, green: 54.0/255.0, blue: 0.0/255.0, alpha: 1)
  static let phoenixStartS2 = UIColor(red: 249.0/255.0, green: 212.0/255.0, blue: 35.0/255.0, alpha: 1)
  static let phoenixStart : [UIColor] = [phoenixStartS1, phoenixStartS2]
  
  // 085 October Silenceiver Style
  // TODO: TL Shifted to BR Shifted
  static let octoberSilenceiverS1 = UIColor(red: 33.0/255.0, green: 212.0/255.0, blue: 253.0/255.0, alpha: 1)
  static let octoberSilenceiverS2 = UIColor(red: 183.0/255.0, green: 33.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let octoberSilenceiver : [UIColor] = [octoberSilenceiverS1, octoberSilenceiverS2]
  
  // 086 Faraway River Style
  // TODO: TL Shifted to BR Shifted
  static let farawayRiverS1 = UIColor(red: 136.0/255.0, green: 211.0/255.0, blue: 206.0/255.0, alpha: 1)
  static let farawayRiverS2 = UIColor(red: 110.0/255.0, green: 69.0/255.0, blue: 226.0/255.0, alpha: 1)
  static let farawayRiver : [UIColor] = [farawayRiverS1, farawayRiverS2]
  
  // 087 Alchemist Lab Style
  // TODO: TL Shifted to BR Shifted
  static let alchemistLabS1 = UIColor(red: 36.0/255.0, green: 210.0/255.0, blue: 146.0/255.0, alpha: 1)
  static let alchemistLabS2 = UIColor(red: 213.0/255.0, green: 88.0/255.0, blue: 200.0/255.0, alpha: 1)
  static let alchemistLab : [UIColor] = [alchemistLabS1, alchemistLabS2]
  
  // 088 Over Sun Style
  // TODO: ML Shifted to MR Shifted
  static let overSunS1 = UIColor(red: 171.0/255.0, green: 236.0/255.0, blue: 214.0/255.0, alpha: 1)
  static let overSunS2 = UIColor(red: 251.0/255.0, green: 237.0/255.0, blue: 150.0/255.0, alpha: 1)
  static let overSun : [UIColor] = [overSunS1, overSunS2]
  
  // 089 Premium White Style
  // TODO: MT to MB MANY COLORS
  static let premiumWhiteS1 = UIColor(red: 233.0/255.0, green: 233.0/255.0, blue: 231.0/255.0, alpha: 1)
  static let premiumWhiteS2 = UIColor(red: 239.0/255.0, green: 238.0/255.0, blue: 236.0/255.0, alpha: 1)
  static let premiumWhiteS3 = UIColor(red: 238.0/255.0, green: 238.0/255.0, blue: 236.0/255.0, alpha: 1)
  static let premiumWhiteS4 = UIColor(red: 213.0/255.0, green: 212.0/255.0, blue: 208.0/255.0, alpha: 1)
  static let premiumWhite : [UIColor] = [premiumWhiteS1, premiumWhiteS2, premiumWhiteS3, premiumWhiteS4]
  
  // 090 Mars Party Style
  // MT to MB
  static let marsPartyS1 = UIColor(red: 155.0/255.0, green: 35.0/255.0, blue: 234.0/255.0, alpha: 1)
  static let marsPartyS2 = UIColor(red: 95.0/255.0, green: 114.0/255.0, blue: 189.0/255.0, alpha: 1)
  static let marsParty : [UIColor] = [marsPartyS1, marsPartyS2]
  
  // 091 Eternal Constance Style
  // MT to MB
  static let eternalConstanceS1 = UIColor(red: 83.0/255.0, green: 120.0/255.0, blue: 149.0/255.0, alpha: 1)
  static let eternalConstanceS2 = UIColor(red: 9.0/255.0, green: 32.0/255.0, blue: 63.0/255.0, alpha: 1)
  static let eternalConstance : [UIColor] = [eternalConstanceS1, eternalConstanceS2]

  // 092 Japan Blush Style
  // TODO: TL Shifted to BR Shifted
  static let japanBlushS1 = UIColor(red: 250.0/255.0, green: 172.0/255.0, blue: 168.0/255.0, alpha: 1)
  static let japanBlushS2 = UIColor(red: 221.0/255.0, green: 214.0/255.0, blue: 243.0/255.0, alpha: 1)
  static let japanBlush : [UIColor] = [japanBlushS1, japanBlushS2]
  
  // 093 Smiling Rain Style
  // TODO: TL Shifted to BR Shifted
  static let smilingRainS1 = UIColor(red: 220.0/255.0, green: 176.0/255.0, blue: 237.0/255.0, alpha: 1)
  static let smilingRainS2 = UIColor(red: 153.0/255.0, green: 153.0/255.0, blue: 204.0/255.0, alpha: 1)
  static let smilingRain : [UIColor] = [smilingRainS1, smilingRainS2]
  
  // 094 Cloudy Apple Style
  // MT to MB
  static let cloudyAppleS1 = UIColor(red: 227.0/255.0, green: 238.0/255.0, blue: 255.0/255.0, alpha: 1)
  static let cloudyAppleS2 = UIColor(red: 243.0/255.0, green: 231.0/255.0, blue: 233.0/255.0, alpha: 1)
  static let cloudyApple : [UIColor] = [cloudyAppleS1, cloudyAppleS2]
  
  // 095 Big Mango Style
  // MT to MB
  static let bigMangoS1 = UIColor(red: 208.0/255.0, green: 150.0/255.0, blue: 147.0/255.0, alpha: 1)
  static let bigMangoS2 = UIColor(red: 199.0/255.0, green: 29.0/255.0, blue: 111.0/255.0, alpha: 1)
  static let bigMango : [UIColor] = [bigMangoS1, bigMangoS2]

  // 096 Healthy Water Style
  // TODO: ML Shifted to MR Shifted
  static let healthyWaterS1 = UIColor(red: 150.0/255.0, green: 222.0/255.0, blue: 218.0/255.0, alpha: 1)
  static let healthyWaterS2 = UIColor(red: 80.0/255.0, green: 201.0/255.0, blue: 195.0/255.0, alpha: 1)
  static let healthyWater : [UIColor] = [healthyWaterS1, healthyWaterS2]
  
  // 097 Amour Amour Style
  // MT to MB
  static let amourAmourS1 = UIColor(red: 254.0/255.0, green: 81.0/255.0, blue: 150.0/255.0, alpha: 1)
  static let amourAmourS2 = UIColor(red: 247.0/255.0, green: 112.0/255.0, blue: 98.0/255.0, alpha: 1)
  static let amourAmour : [UIColor] = [amourAmourS1, amourAmourS2]
  
  // 098 Risky Concrete Style
  // MT to MB
  static let riskyConcreteS1 = UIColor(red: 235.0/255.0, green: 235.0/255.0, blue: 235.0/255.0, alpha: 1)
  static let riskyConcreteS2 = UIColor(red: 220.0/255.0, green: 221.0/255.0, blue: 223.0/255.0, alpha: 1)
  static let riskyConcreteS3 = UIColor(red: 196.0/255.0, green: 197.0/255.0, blue: 199.0/255.0, alpha: 1)
  static let riskyConcrete : [UIColor] = [riskyConcreteS1, riskyConcreteS2, riskyConcreteS3]
  
  // 099 Strong Stick Style
  // ML to MR
  static let strongStickS1 = UIColor(red: 168.0/255.0, green: 202.0/255.0, blue: 186.0/255.0, alpha: 1)
  static let strongStickS2 = UIColor(red: 93.0/255.0, green: 65.0/255.0, blue: 87.0/255.0, alpha: 1)
  static let strongStick : [UIColor] = [strongStickS1, strongStickS2]
  
  // 100 Vicious Stance Style
  // ML Shifted to MR Shifted
  static let viciousStanceS1 = UIColor(red: 41.0/255.0, green: 50.0/255.0, blue: 60.0/255.0, alpha: 1)
  static let viciousStanceS2 = UIColor(red: 72.0/255.0, green: 85.0/255.0, blue: 99.0/255.0, alpha: 1)
  static let viciousStance : [UIColor] = [viciousStanceS1, viciousStanceS2]
  
  
}

extension UIColor{
  func getHexValue() -> String{
    var result = "#"
    
    var fRed: CGFloat = 0
    var fGreen: CGFloat = 0
    var fBlue: CGFloat = 0
    var fAlpha: CGFloat = 0
    
    if self.getRed(&fRed, green: &fGreen, blue: &fBlue, alpha: &fAlpha) {
      
      result += String(Int(fRed*255.0), radix: 16, uppercase: false)
      result += String(Int(fGreen*255.0), radix: 16, uppercase: false)
      result += String(Int(fBlue*255.0), radix: 16, uppercase: false)
      
    } else {
      print("error: color could not be converted")
    }
    return result
  }
}
