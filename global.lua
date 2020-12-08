--[[ Lua code. See documentation: https://api.tabletopsimulator.com/ --]]
--[[ The onLoad event is called after the game save finishes loading. --]]



function onLoad()
 main()
end

--[[ The onUpdate event is called once per frame. --]]
function onUpdate()
  --local color = playerColors[1]
  --printSectionTotals(playerChipsZone[color], color)
  --local color = playerColors[2]
  --printSectionTotals(playerChipsZone[color], color)
  --local color = playerColors[3]
  --printSectionTotals(playerChipsZone[color], color)
  --local color = playerColors[4]
  --printSectionTotals(playerChipsZone[color], color)
  --local color = playerColors[5]
  --printSectionTotals(playerChipsZone[color], color)
  --local color = playerColors[6]
  --printSectionTotals(playerChipsZone[color], color)
end

--------------------------------------------------------------------------------
--------------------------------------Main--------------------------------------
--------------------------------------------------------------------------------

function main()



  init()


end

function run()

  Turns.enable = true
  Turns.type = 2

  --industry_deck.setLock(false)
  industry_deck.shuffle()

  for idx, p in ipairs(industrySpawnLoc) do
   --print"idx = " .. tostring(idx))
    drawIndustryCards(p,idx)
  end

  for idx, p in ipairs(industries) do
   --print"industries[" .. idx .. "] = " .. p.getName())
  end

  inZone["object"] = false
  inZone["zone"] = false
  inZone["color"] = false

  dealInitialMoney()
end

--------------------------------------------------------------------------------
-----------------------------------Initialize-----------------------------------
--------------------------------------------------------------------------------

function init()

  --(NOTE)figure out how to make invisible to spectators
  masterChip10Plain = getObjectFromGUID("e31eff")
  masterChip10Plain.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Plain.interactable = false
  masterChip10Red = getObjectFromGUID("1503e3")
  masterChip10Red.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Red.interactable = false --call('setInteractableFalse', {})
  masterChip10Yellow = getObjectFromGUID("58c4db")
  masterChip10Yellow.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Yellow.interactable = false
  masterChip10Green = getObjectFromGUID("a7e8a1")
  masterChip10Green.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Green.interactable = false
  masterChip10Blue = getObjectFromGUID("4c4047")
  masterChip10Blue.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Blue.interactable = false
  masterChip10Orange = getObjectFromGUID("46515d")
  masterChip10Orange.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Orange.interactable = false
  masterChip10Purple = getObjectFromGUID("1b42e2")
  masterChip10Purple.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip10Purple.interactable = false

  masterChip50Plain = getObjectFromGUID("c2bd92")
  masterChip50Plain.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Plain.interactable = false
  masterChip50Red = getObjectFromGUID("e4b2d7")
  masterChip50Red.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Red.interactable = false
  masterChip50Yellow = getObjectFromGUID("6764b0")
  masterChip50Yellow.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Yellow.interactable = false
  masterChip50Green = getObjectFromGUID("a7cdad")
  masterChip50Green.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Green.interactable = false
  masterChip50Blue = getObjectFromGUID("84aadc")
  masterChip50Blue.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Blue.interactable = false
  masterChip50Orange = getObjectFromGUID("6713ab")
  masterChip50Orange.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Orange.interactable = false
  masterChip50Purple = getObjectFromGUID("cbff9a")
  masterChip50Purple.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip50Purple.interactable = false

  masterChip100Plain = getObjectFromGUID("fa07db")
  masterChip100Plain.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Plain.interactable = false
  masterChip100Red = getObjectFromGUID("1ef923")
  masterChip100Red.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Red.interactable = false
  masterChip100Yellow = getObjectFromGUID("ad46d6")
  masterChip100Yellow.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Yellow.interactable = false
  masterChip100Green = getObjectFromGUID("78bd49")
  masterChip100Green.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Green.interactable = false
  masterChip100Blue = getObjectFromGUID("e5086d")
  masterChip100Blue.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Blue.interactable = false
  masterChip100Orange = getObjectFromGUID("f3ff58")
  masterChip100Orange.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Orange.interactable = false
  masterChip100Purple = getObjectFromGUID("d3d879")
  masterChip100Purple.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip100Purple.interactable = false

  masterChip500Plain = getObjectFromGUID("3cbbd9")
  masterChip500Plain.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Plain.interactable = false
  masterChip500Red = getObjectFromGUID("1458f3")
  masterChip500Red.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Red.interactable = false
  masterChip500Yellow = getObjectFromGUID("f56384")
  masterChip500Yellow.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Yellow.interactable = false
  masterChip500Green = getObjectFromGUID("22a2df")
  masterChip500Green.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Green.interactable = false
  masterChip500Blue = getObjectFromGUID("76a7ab")
  masterChip500Blue.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Blue.interactable = false
  masterChip500Orange = getObjectFromGUID("2f9a4c")
  masterChip500Orange.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Orange.interactable = false
  masterChip500Purple = getObjectFromGUID("b25b30")
  masterChip500Purple.setInvisibleTo({"White","Red","Orange","Green","Blue","Purple","Grey"})
  masterChip500Purple.interactable = false


  loading = 4

  industry_deck = getObjectFromGUID("ccb722")


  zonePos = 0

  bonusZone = getObjectFromGUID("02c106")

  bonusDeck = getObjectFromGUID("893673")

  bonusDeckAmount = 0

  bankZone = getObjectFromGUID("75d0ee")

  fromBank = false

  --textZone = getObjectFromGUID("f6f921")

  --print("text value: " .. textZone.getValue())



  --print("text location: " .. tostring(textZone.getPosition()))
  industryCards = {}
  industryCards["Power"] = getObjectFromGUID("f481a0")
  industryCards["Medical"] = getObjectFromGUID("adb96f")
  industryCards["Aviation"] = getObjectFromGUID("b03e27")
  industryCards["Technology"] = getObjectFromGUID("127e3b")
  industryCards["Gold"] = getObjectFromGUID("38c367")
  industryCards["Oil"] = getObjectFromGUID("a6eef4")
  industryCards["Blank"] = getObjectFromGUID("377fe1")

  industries = {}
  --industries[1] = "Empty"
  --industries[2] = "Empty"
  --industries[3] = "Empty"
  --industries[4] = "Empty"

  --industries[1] = getObjectFromGUID("38c367")
  --industries[2] = getObjectFromGUID("adb96f")
  --industries[3] = getObjectFromGUID("127e3b")
  --industries[4] = getObjectFromGUID("a6eef4")
  --industries[5] = getObjectFromGUID("adb96f")
  --industries[6] = getObjectFromGUID("adb96f")

  zonePosition = {}
  zonePosition["2bada0"] = 1
  zonePosition["1a4130"] = 2
  zonePosition["82742a"] = 3
  zonePosition["e95fef"] = 4
  zonePosition[1] = "2bada0"
  zonePosition[2] = "1a4130"
  zonePosition[3] = "82742a"
  zonePosition[4] = "e95fef"

  zonesFromIndustry = {}

  inZone = {}
  inZone["object"] = false
  inZone["zone"] = false
  inZone["color"] = false

  local toInvest

  industryValue = {}
  industryValue["a6eef4"] = 8000
  industryValue["adb96f"] = 2000
  industryValue["127e3b"] = 5000
  industryValue["f481a0"] = 2000
  industryValue["b03e27"] = 1000
  industryValue["38c367"] = 4000

  industryValue["Green"] = 8000
  industryValue["Orange"] = 2000
  industryValue["Purple"] = 5000
  industryValue["Red"] = 2000
  industryValue["Blue"] = 1000
  industryValue["Yellow"] = 4000



  industryColor = {}
  industryColor["Orange"] = industryCards["Power"]
  industryColor["Green"] = industryCards["Oil"]
  industryColor["Blue"] = industryCards["Aviation"]
  industryColor["Red"] = industryCards["Medical"]
  industryColor["Yellow"] = industryCards["Gold"]
  industryColor["Purple"] = industryCards["Technology"]

  industryColor["f481a0"] = "Orange"
  industryColor["a6eef4"] = "Green"
  industryColor["b03e27"] = "Blue"
  industryColor["adb96f"] = "Red"
  industryColor["38c367"] = "Yellow"
  industryColor["127e3b"] = "Purple"

  --playerByColor = {}

  --for idx, p in ipairs(getSeatedPlayers()) do
  --  playerByColor[p.held_by_color] = p
  --end

  --spawnInitialMoney("White", 5)
  --spawnInitialMoney("Red", 5)
  --spawnInitialMoney("Orange", 5)
  --spawnInitialMoney("Green", 5)
  --spawnInitialMoney("Blue", 5)
  --spawnInitialMoney("Purple", 5

  industrySpawnLoc = {}
  industrySpawnLoc[1] = -7.04
  industrySpawnLoc[2] = -2.35
  industrySpawnLoc[3] = 2.35
  industrySpawnLoc[4] = 7.04

  playerColors = {}
  playerColors[1] = "White"
  playerColors[2] = "Red"
  playerColors[3] = "Orange"
  playerColors[4] = "Green"
  playerColors[5] = "Blue"
  playerColors[6] = "Purple"

  playerChipsZone = {}
  playerChipsZone[playerColors[1]] = getObjectFromGUID("a6fe21")
  playerChipsZone[playerColors[2]] = getObjectFromGUID("68c02a")
  playerChipsZone[playerColors[3]] = getObjectFromGUID("131009")
  playerChipsZone[playerColors[4]] = getObjectFromGUID("88c2a6")
  playerChipsZone[playerColors[5]] = getObjectFromGUID("9a474b")
  playerChipsZone[playerColors[6]] = getObjectFromGUID("3c1e3e")

  playerChipsZone["a6fe21"] = playerColors[1]
  playerChipsZone["68c02aa"] = playerColors[2]
  playerChipsZone["131009"] = playerColors[3]
  playerChipsZone["88c2a6"] = playerColors[4]
  playerChipsZone["9a474b"] = playerColors[5]
  playerChipsZone["3c1e3e"] = playerColors[6]



  chipColors = {"Orange", "Green", "Yellow", "Blue", "Purple", "Red"}

  playerByColor = {}
  playerByColor["White"] = 1
  playerByColor["Red"] = 1
  playerByColor["Orange"] = 1
  playerByColor["Green"] = 1
  playerByColor["Blue"] = 1
  playerByColor["Purple"] = 1

  chipValues = {}
  chipValues[10] = 1000
  chipValues[50] = 5000
  chipValues[100] = 10000
  chipValues[500] = 50000
  chipValues[1000] = 100000

  industryChildren = {}

  location = 0

  --has the format of [player_color] = text_box


  industry1Text = {}
  industry1Text[playerColors[1]] = getObjectFromGUID("2f640d")
  industry1Text[playerColors[2]] = getObjectFromGUID("87a075")
  industry1Text[playerColors[3]] = getObjectFromGUID("a77d79")
  industry1Text[playerColors[4]] = getObjectFromGUID("f25397")
  industry1Text[playerColors[5]] = getObjectFromGUID("efabf4")
  industry1Text[playerColors[6]] = getObjectFromGUID("7d1cfd")

  industry2Text = {}
  industry2Text[playerColors[1]] = getObjectFromGUID("b33be6")
  industry2Text[playerColors[2]] = getObjectFromGUID("93d42f")
  industry2Text[playerColors[3]] = getObjectFromGUID("9c019a")
  industry2Text[playerColors[4]] = getObjectFromGUID("84a1ec")
  industry2Text[playerColors[5]] = getObjectFromGUID("ec0b6f")
  industry2Text[playerColors[6]] = getObjectFromGUID("749152")

  industry3Text = {}
  industry3Text[playerColors[1]] = getObjectFromGUID("e1de17")
  industry3Text[playerColors[2]] = getObjectFromGUID("d8dd82")
  industry3Text[playerColors[3]] = getObjectFromGUID("daacb6")
  industry3Text[playerColors[4]] = getObjectFromGUID("b22ff4")
  industry3Text[playerColors[5]] = getObjectFromGUID("3f9981")
  industry3Text[playerColors[6]] = getObjectFromGUID("521923")

  industry4Text = {}
  industry4Text[playerColors[1]] = getObjectFromGUID("0d555f")
  industry4Text[playerColors[2]] = getObjectFromGUID("7274c4")
  industry4Text[playerColors[3]] = getObjectFromGUID("2c5264")
  industry4Text[playerColors[4]] = getObjectFromGUID("e53fe0")
  industry4Text[playerColors[5]] = getObjectFromGUID("380414")
  industry4Text[playerColors[6]] = getObjectFromGUID("066cfd")

  industry1TotalText = {}
  industry1TotalText[playerColors[1]] = getObjectFromGUID("e2b4db")
  industry1TotalText[playerColors[2]] = getObjectFromGUID("4121c8")
  industry1TotalText[playerColors[3]] = getObjectFromGUID("d87f9f")
  industry1TotalText[playerColors[4]] = getObjectFromGUID("ee788b")
  industry1TotalText[playerColors[5]] = getObjectFromGUID("712052")
  industry1TotalText[playerColors[6]] = getObjectFromGUID("4b3726")

  industry2TotalText = {}
  industry2TotalText[playerColors[1]] = getObjectFromGUID("d670c6")
  industry2TotalText[playerColors[2]] = getObjectFromGUID("89d70a")
  industry2TotalText[playerColors[3]] = getObjectFromGUID("d9bd38")
  industry2TotalText[playerColors[4]] = getObjectFromGUID("8c50b9")
  industry2TotalText[playerColors[5]] = getObjectFromGUID("9b0114")
  industry2TotalText[playerColors[6]] = getObjectFromGUID("e8f2a9")

  industry3TotalText = {}
  industry3TotalText[playerColors[1]] = getObjectFromGUID("52969b")
  industry3TotalText[playerColors[2]] = getObjectFromGUID("d56419")
  industry3TotalText[playerColors[3]] = getObjectFromGUID("db1050")
  industry3TotalText[playerColors[4]] = getObjectFromGUID("1ec648")
  industry3TotalText[playerColors[5]] = getObjectFromGUID("7b4c0d")
  industry3TotalText[playerColors[6]] = getObjectFromGUID("a99e78")

  industry4TotalText = {}
  industry4TotalText[playerColors[1]] = getObjectFromGUID("2e1872")
  industry4TotalText[playerColors[2]] = getObjectFromGUID("d56417")
  industry4TotalText[playerColors[3]] = getObjectFromGUID("fccf72")
  industry4TotalText[playerColors[4]] = getObjectFromGUID("138480")
  industry4TotalText[playerColors[5]] = getObjectFromGUID("c01012")
  industry4TotalText[playerColors[6]] = getObjectFromGUID("5d78ae")

  uninvestedTotalText = {}
  uninvestedTotalText[playerColors[1]] = getObjectFromGUID("9619a6")
  uninvestedTotalText[playerColors[2]] = getObjectFromGUID("f6d7f1")
  uninvestedTotalText[playerColors[3]] = getObjectFromGUID("8c9718")
  uninvestedTotalText[playerColors[4]] = getObjectFromGUID("7f9ee5")
  uninvestedTotalText[playerColors[5]] = getObjectFromGUID("8cba34")
  uninvestedTotalText[playerColors[6]] = getObjectFromGUID("eb17c4")

  totalText = {}
  totalText[playerColors[1]] = getObjectFromGUID("52333b")
  totalText[playerColors[2]] = getObjectFromGUID("04f694")
  totalText[playerColors[3]] = getObjectFromGUID("0ac891")
  totalText[playerColors[4]] = getObjectFromGUID("8e3d37")
  totalText[playerColors[5]] = getObjectFromGUID("92176e")
  totalText[playerColors[6]] = getObjectFromGUID("fd3f22")


end

--------------------------------------------------------------------------------
-----------------------------Initial Player Loadout-----------------------------
--------------------------------------------------------------------------------

---------------------------------------
------Gather Industries------
---------------------------------------

function gatherIndustries()
  for _, ic in ipairs(industryCards) do
    if ic.is_face_down == false then
     --print"Flip card")
      ic.flip()
    end
   --print"Place card in pie")
    ic.setPosition({-7.15, 1.2, 1.52})
  end
end

---------------------------------------
------Deal Initial Industry Cards------
---------------------------------------
function drawIndustryCards(xLoc, idx)
 --printtostring(xLoc) .. ", " .. tostring(idx))
  pos = {x=xLoc, y=1.04, z=-3.55}
  takeParams = {
    position          = pos,
    smooth            = false,
    --index             = 1,
    flip              = true,
    top               = true
  }
  tempCard = industry_deck.takeObject(takeParams)
 --print"TempCard GUID = " .. tempCard.getGUID())
  if tempCard.getGUID() == "377fe1" then
   --print"blank card drawn")
    --spawnParams = {
    --  location = {0.26, 1.00, 6.64}
    --}
    --blank = tempCard.clone(spawnParms)
    blank = tempCard
    industry_deck.setLock(false)
    if blank.is_face_down == false then

    end
    blank.setPosition({0.26, 1.00, 6.64})
    blank.flip()
    industry_deck.setLock(false)
    blank.setPosition({-7.15, 1.2, 1.52})
    industry_deck.shuffle()
    --industry_deck.setLock(true)
    --destroyObject(tempCard)
    --destroyObject(tempCard)
    tempCard = false
    blank = false
   --print"xLoc = " .. tostring(xLoc))
    drawIndustryCards(xLoc, idx)
  elseif tempCard.getGUID() ~= "377fe1" then
    card = tempCard
    tempCard = false
    card.setLock(true)
  --assign 1-4 position here when card is generated, don't rely on scripting zones
   --print"Industry: " .. card.getGUID())
    industries[idx] = card
    industries[card.getGUID()] = idx
    --print(card.call('getColor'))
    --industryColor[card.getVar('color')] = card

    if idx == 1 then

      industries[1] = card
      for i, c in pairs(industry1Text) do
        c.setValue(card.getName())
        c.TextTool.setFontColor("White")
        if card.getName() == "Technology" then
          c.TextTool.setFontSize(55)
        end
      end
    elseif idx == 2 then
      for i, c in pairs(industry2Text) do
        c.setValue(card.getName())
        c.TextTool.setFontColor("White")
        if card.getName() == "Technology" then
          c.TextTool.setFontSize(55)
        end
      end
    elseif idx == 3 then
      for i, c in pairs(industry3Text) do
        c.setValue(card.getName())
        c.TextTool.setFontColor("White")
        if card.getName() == "Technology" then
          c.TextTool.setFontSize(55)
        end
      end
    elseif idx == 4 then
      for i, c in pairs(industry4Text) do
        c.setValue(card.getName())
        c.TextTool.setFontColor("White")
        if card.getName() == "Technology" then
          c.TextTool.setFontSize(55)
          c.TextTool.setFontColor("White")
        end
      end
    end
  end
  --textZone.setValue(card.getName())
end

function dealInitialMoney()
  local players = getSeatedPlayers()

  for idx, p in ipairs(players) do
    --print("Seated player: " .. tostring(p))
    spawnInitialMoney(tostring(p), 5)
  end
end

--Spawns the Initial Money For Players
function spawnInitialMoney(color, num)
  for i=1,num,1 do
    currentPos = {}
    if color == "Red" then
      spawnParams = {
          position          = {-16.50, 1.07, -17.33},
      }
    end
    if color == "Orange" then

      spawnParams = {
          position          = {-27.20, 1.07, 5.66},
      }
    end
    if color == "Green" then

      spawnParams = {
          position          = {-7.32, 1.07, 17.14},
      }
    end
    if color == "Blue" then

      spawnParams = {
          position          = {15.89, 1.07, 17.19},
      }
    end
    if color == "Purple" then

      spawnParams = {
          position          = {27.15, 1.07, -4.62},
      }
    end
    if color == "White" then

      spawnParams = {
          position          = {6.26, 1.07, -17.40},
      }
    end
    clonedChip = masterChip100Plain.clone(spawnParams)
    clonedChip.flip()
  end
end

--------------------------------------------------------------------------------
-------------------Industry Card Interaction with Poker Chips-------------------
--------------------------------------------------------------------------------


---------------------------------------
------------Collision Events-----------
---------------------------------------

function onObjectCollisionEnter(hit_object, collision_info)
  -- collision_info table:
  --   collision_object    Object
  --   contact_points      Table     {Vector, ...}
  --   relative_velocity   Vector
 --print"Collision!")
  collision_object = collision_info["collision_object"]
 --printcollision_info["collision_object"].getName() .. " collided with " .. hit_object.getName())

  if fromBank == false then
    if hit_object.getGUID() == "f83b0e" then
      local collision_object = collision_info.collision_object
      if collision_object.getVar('isChip') == true then
        destroyObject(collision_object)
      end
    elseif hit_object.getGUID() == "8dc3f3" then
      local collision_object = collision_info.collision_object
      if collision_object.getVar('isChip') == true then
        destroyObject(collision_object)
      end
    elseif hit_object.getGUID() == "db93c4" then
      local collision_object = collision_info.collision_object
      if collision_object.getVar('isChip') == true then
        destroyObject(collision_object)
      end
    elseif hit_object.getGUID() == "2edccb" then
      local collision_object = collision_info.collision_object
      if collision_object.getVar('isChip') == true then
        destroyObject(collision_object)
      end
    end
  end
  --if bank was hit
  ----handle internally
    --move through dealt industry cards
  if collision_object.getVar('isChip') == true then
    if hit_object.getVar('bank') ~= true then
      for idx, i in ipairs(industries) do
        zonePos = industries[i.getGUID()]
       --printi.getName())
        --if a dealt industry card was hit
        if hit_object == i then
          --if the object that hit the card is not a stack
          if collision_object.getQuantity() == -1 then
            --spawn one chip
            spawnInvestedMoney(1, collision_object, hit_object)
            destroyObject(collision_object)
          else
            --else spawn a number of chips equal to the number in the stack
            spawnInvestedMoney(collision_object.getQuantity(), collision_object, hit_object)
            destroyObject(collision_object)
          end
        end
      end
    end
  end
end

function onObjectCollisionExit(hit_object, collision_info)
  -- collision_info table:
  --   collision_object    Object
  --   contact_points      Table     {Vector, ...}
  --   relative_velocity   Vector
  if hit_object == bonusDeck then
    if collision_object.getQuantity() == -1 then
      bonusDeckAmount = bonusDeckAmount - collision_object.getValue()
    else
      stackValue = collision_object.getValue() * collision_object.getQuantity()
      bonusDeckAmount = bonusDeckAmount - stackValue
    end
  end
end

---------------------------------------
---------------Zone Events-------------
---------------------------------------

--Replace this with collision when player zone card is made
function onObjectEnterScriptingZone(zone, enter_object)
  if enter_object.getVar('isChip') == true then
    if zone.getGUID() == "a6fe21" then
      --Wait(2)
      local player_color = Turns.turn_color
      --printChipValueInZone(zone, player_color)
    end
  end
end

function onObjectLeaveScriptingZone(zone, leave_object)
  if leave_object.getVar('isChip') == true then
    if zone.getGUID() == "a6fe21" then
      local player_color = Turns.turn_color
      --printChipValueInZone(zone, player_color)
    end
  end
end

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------

function removeCorrectChips(amountToRemove)
  local chip1000 = 0
  local chip5000 = 0
  local chip10000 = 0
  local chip50000 = 0

  for idx, c in ipairs(bonusZone.getObjects()) do
    --check for stack
    if c.getQuantity() == -1 then
      result = result + c.getValue()
    else
      result = result + (c.getValue() * c.getQuantity())
    end
    if c.getValue() == 10 then
      chip1000 = chip1000 + result
    elseif c.getValue() == 50 then
      chip5000 = chip5000 + result
    elseif c.getValue() == 100 then
      chip10000 = chip10000 + result
    elseif c.getValue() == 500 then
      chip50000 = chip50000 + result
    end
  end

  --guaranteed to have enough chips to pay
  local chip1000Value = 1000 * chip1000
  local chip5000Value = 5000 * chip5000
  local chip10000Value = 10000 * chip10000
  local chip50000Vlaue = 50000 * chip50000
  if chip50000Value >= amountToRemove then
    numberOfChipsToRemove = amountToRemove / 50000
    remove50000(numberOfChipsToRemove)
    if amountToRemove - (numberOfChipsToRemove * 50000) > 0 then
      removeCorrectChips(amountToRemove - (numberOfChipsToRemove * 50000))
    end
  elseif chip10000Value >= amountToRemove then
    numberOfChipsToRemove = amountToRemove / 10000
    remove10000(numberOfChipsToRemove)
    if amountToRemove - (numberOfChipsToRemove * 10000) > 0 then
      removeCorrectChips(amountToRemove - (numberOfChipsToRemove * 10000))
    end
  elseif chip5000Value >= amountToRemove then
    numberOfChipsToRemove = amountToRemove / 5000
    remove5000(numberOfChipsToRemove)
    if amountToRemove - (numberOfChipsToRemove * 5000) > 0 then
      removeCorrectChips(amountToRemove - (numberOfChipsToRemove * 5000))
    end
  elseif chip1000Value >= amountToRemove then
    numberOfChipsToRemove = amountToRemove / 1000
    remove1000(numberOfChipsToRemove)
    if amountToRemove - (numberOfChipsToRemove * 1000) > 0 then
      removeCorrectChips(amountToRemove - (numberOfChipsToRemove * 1000))
    end
  end
end

--------------------------------------------------------------------------------

function remove1000(num)
  local counter = num
  for idx, c in ipairs(bonusZone.getObjects()) do
    --remove objects until the counter hits 0
    if counter > 0 then
      --only remove 10 chips
      if c.getValue() == 10 then
        if c.getQuantity() == -1 then
          c.destruct()
          count = counter - 1
        else
          --take objects off the stack until the counter hits 0
          for i=1,c.getQuantity(),1 do
            if counter > 0 then
              local takenObject = c.takeObject({
                smooth            = false,
                top               = true
              })
              takenObject.destruct()
              counter = counter - 1
            end
          end
        end
      end
    else
      break
    end
  end
end

--------------------------------------------------------------------------------

function remove5000(num)
  local counter = num
  for idx, c in ipairs(bonusZone.getObjects()) do
    --remove objects until the counter hits 0
    if counter > 0 then
      --only remove 10 chips
      if c.getValue() == 50 then
        if c.getQuantity() == -1 then
          c.destruct()
          count = counter - 1
        else
          --take objects off the stack until the counter hits 0
          for i=1,c.getQuantity(),1 do
            if counter > 0 then
              local takenObject = c.takeObject({
                smooth            = false,
                top               = true
              })
              takenObject.destruct()
              counter = counter - 1
            end
          end
        end
      end
    else
      break
    end
  end
end

--------------------------------------------------------------------------------

function remove10000(num)
  local counter = num
  for idx, c in ipairs(bonusZone.getObjects()) do
    --remove objects until the counter hits 0
    if counter > 0 then
      --only remove 10 chips
      if c.getValue() == 100 then
        if c.getQuantity() == -1 then
          c.destruct()
          count = counter - 1
        else
          --take objects off the stack until the counter hits 0
          for i=1,c.getQuantity(),1 do
            if counter > 0 then
              local takenObject = c.takeObject({
                smooth            = false,
                top               = true
              })
              takenObject.destruct()
              counter = counter - 1
            end
          end
        end
      end
    else
      break
    end
  end
end

--------------------------------------------------------------------------------

function remove50000(num)
  local counter = num
  for idx, c in ipairs(bonusZone.getObjects()) do
    --remove objects until the counter hits 0
    if counter > 0 then
      --only remove 10 chips
      if c.getValue() == 500 then
        if c.getQuantity() == -1 then
          c.destruct()
          count = counter - 1
        else
          --take objects off the stack until the counter hits 0
          for i=1,c.getQuantity(),1 do
            if counter > 0 then
              local takenObject = c.takeObject({
                smooth            = false,
                top               = true
              })
              takenObject.destruct()
              counter = counter - 1
            end
          end
        end
      end
    else
      break
    end
  end
end

---------------------------------------
--------------Object Events------------
---------------------------------------


--------------------------------------------------------------------------------
-----------------------------------Spawn Money----------------------------------
--------------------------------------------------------------------------------
local data = {click_function = "INSERT_FUNCTION", function_owner = self, label = "Start", position = {0, 0.5, 0}, scale = {0.5, 0.5, 0.5}, width = 1000, height = 600, font_size = 450, color = {0.7573, 0.7573, 0.7573, 0.6}, tooltip = "Press to Start"}

---------------------------------------
-------------Invested Money------------
---------------------------------------

function spawnMoneyForSeatedPlayers()

end


---------------------------------------
-------------Invested Money------------
---------------------------------------

--Spawns Invested Money when Poker Chips Interact with an Industry Card
function spawnInvestedMoney(num, dropped_object, zone)
  moneyValue = dropped_object.getValue()

  moneyColor = zone.call("getColor")

  color = dropped_object.getVar('owner')
 --print"Owner: " .. color)

  local player_id = dropped_object.getVar("owner")

  for i=1,num,1 do
    currentPos = {}
    if color == "Red" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {-12.55, 1.07, -15.73}
        currentPos[2] = {-8.73, 1.07, -15.73}
        currentPos[3] = {-4.76, 1.07, -15.73}
        currentPos[4] = {-0.82, 1.07, -15.73}
      elseif moneyValue == 50 then
        currentPos[1] = {-10.95, 1.07, -15.73}
        currentPos[2] = {-7.13, 1.07, -15.73}
        currentPos[3] = {-3.16, 1.07, -15.73}
        currentPos[4] = {0.78, 1.07, -15.73}
      elseif moneyValue == 100 then
        currentPos[1] = {-12.55, 1.07, -17.33}
        currentPos[2] = {-8.73, 1.07, -17.33}
        currentPos[3] = {-4.76, 1.07, -17.33}
        currentPos[4] = {-0.82, 1.07, -17.33}
      elseif moneyValue == 500 then
        -- z - 1.6
        currentPos[1] = {-10.95, 1.07, -17.33}
        currentPos[2] = {-7.13, 1.07, -17.33}
        currentPos[3] = {-3.16, 1.07, -17.33}
        currentPos[4] = {0.78, 1.07, -17.33}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Orange" then
      if moneyValue == 10 then
        -- x - 1.6
        currentPos[1] = {-25.6, 1.07, 1.71}
        currentPos[2] = {-25.6, 1.07, -2.10}
        currentPos[3] = {-25.6, 1.07, -6.08}
        currentPos[4] = {-25.6, 1.07, -10.01}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z + 1.6
        currentPos[1] = {-25.6, 1.07, 0.11}
        currentPos[2] = {-25.6, 1.07, -3.7}
        currentPos[3] = {-25.6, 1.07, -7.68}
        currentPos[4] = {-25.6, 1.07, -11.61}
      elseif moneyValue == 100 then
        currentPos[1] = {-27.20, 1.07, 1.71}
        currentPos[2] = {-27.20, 1.07, -2.10}
        currentPos[3] = {-27.20, 1.07, -6.08}
        currentPos[4] = {-27.20, 1.07, -10.01}
      elseif moneyValue == 500 then
        -- z + 1.6
        currentPos[1] = {-27.20, 1.07, 0.11}
        currentPos[2] = {-27.20, 1.07, -3.7}
        currentPos[3] = {-27.20, 1.07, -7.68}
        currentPos[4] = {-27.20, 1.07, -11.61}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Green" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {-11.28, 1.07, 15.57}
        currentPos[2] = {-15.09, 1.07, 15.57}
        currentPos[3] = {-19.07, 1.07, 15.57}
        currentPos[4] = {-23.00, 1.07, 15.57}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z - 1.6
        currentPos[1] = {-12.88, 1.07, 15.57}
        currentPos[2] = {-16.69, 1.07, 15.57}
        currentPos[3] = {-20.67, 1.07, 15.57}
        currentPos[4] = {-24.6, 1.07, 15.57}
      elseif moneyValue == 100 then
        currentPos[1] = {-11.28, 1.07, 17.17}
        currentPos[2] = {-15.09, 1.07, 17.17}
        currentPos[3] = {-19.07, 1.07, 17.17}
        currentPos[4] = {-23.00, 1.07, 17.17}
      elseif moneyValue == 500 then
        -- x- 1.6
        currentPos[1] = {-12.88, 1.07, 17.17}
        currentPos[2] = {-16.69, 1.07, 17.17}
        currentPos[3] = {-20.67, 1.07, 17.17}
        currentPos[4] = {-24.6, 1.07, 17.17}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Blue" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {11.94, 1.07, 15.61}
        currentPos[2] = {8.12, 1.07, 15.61}
        currentPos[3] = {4.15, 1.07, 15.61}
        currentPos[4] = {0.22, 1.07, 15.61}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z - 1.6
        currentPos[1] = {10.34, 1.07, 15.61}
        currentPos[2] = {6.52, 1.07, 15.61}
        currentPos[3] = {2.55, 1.07, 15.61}
        currentPos[4] = {-1.38, 1.07, 15.61}
      elseif moneyValue == 100 then
        currentPos[1] = {11.94, 1.07, 17.21}
        currentPos[2] = {8.12, 1.07, 17.21}
        currentPos[3] = {4.15, 1.07, 17.22}
        currentPos[4] = {0.22, 1.07, 17.23}
      elseif moneyValue == 500 then
        -- x -1.6
        currentPos[1] = {10.34, 1.07, 17.21}
        currentPos[2] = {6.52, 1.07, 17.21}
        currentPos[3] = {2.55, 1.07, 17.22}
        currentPos[4] = {-1.38, 1.07, 17.23}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Purple" then
      if moneyValue == 10 then
        --x - 1.6
        currentPos[1] = {25.56, 1.07, -0.69}
        currentPos[2] = {25.56, 1.07, 3.29}
        currentPos[3] = {25.56, 1.07, 7.10}
        currentPos[4] = {25.56, 1.07, 11.06}
      elseif moneyValue == 50 then
        -- x - 1.6, z + 1.6
        currentPos[1] = {25.56, 1.07, 0.91}
        currentPos[2] = {25.56, 1.07, 4.89}
        currentPos[3] = {25.56, 1.07, 8.7}
        currentPos[4] = {25.56, 1.07, 12.66}
      elseif moneyValue == 100 then
        currentPos[1] = {27.15, 1.07, -0.69}
        currentPos[2] = {27.12, 1.07, 3.29}
        currentPos[3] = {27.16, 1.07, 7.10}
        currentPos[4] = {27.12, 1.07, 11.06}
      elseif moneyValue == 500 then
        -- z + 1.6
        currentPos[1] = {27.15, 1.07, 0.91}
        currentPos[2] = {27.12, 1.07, 4.89}
        currentPos[3] = {27.16, 1.07, 8.7}
        currentPos[4] = {27.12, 1.07, 12.66}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "White" then
     --print"Color is white")
      if moneyValue == 10 then
        currentPos[1] = {10.22, 1.07, -15.80}
        currentPos[2] = {14.03, 1.07, -15.80}
        currentPos[3] = {18.01, 1.07, -15.80}
        currentPos[4] = {21.94, 1.07, -15.80}
      elseif moneyValue == 50 then
        currentPos[1] = {11.82, 1.07, -15.80}
        currentPos[2] = {15.36, 1.07, -15.80}
        currentPos[3] = {19.61, 1.07, -15.80}
        currentPos[4] = {23.54, 1.07, -15.80}
      elseif moneyValue == 100 then
        currentPos[1] = {10.22, 1.07, -17.40}
        currentPos[2] = {14.03, 1.07, -17.40}
        currentPos[3] = {18.01, 1.07, -17.40}
        currentPos[4] = {21.94, 1.07, -17.40}
      elseif moneyValue == 500 then
        currentPos[1] = {11.82, 1.07, -17.40}
        currentPos[2] = {15.36, 1.07, -17.40}
        currentPos[3] = {19.61, 1.07, -17.40}
        currentPos[4] = {23.54, 1.07, -17.40}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if moneyValue == 10 then
      if moneyColor == "Red" then
        clonedChip = masterChip10Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Yellow" then--all good
        clonedChip = masterChip10Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
      elseif moneyColor == "Green" then
        clonedChip = masterChip10Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Blue" then
        clonedChip = masterChip10Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Orange" then
        clonedChip = masterChip10Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Purple" then
        clonedChip = masterChip10Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      end
    elseif moneyValue == 50 then
      if moneyColor == "Red" then
        clonedChip = masterChip50Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Yellow" then--to check
        clonedChip = masterChip50Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Green" then
        clonedChip = masterChip50Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Blue" then
        clonedChip = masterChip50Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Orange" then
        clonedChip = masterChip50Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Purple" then
        clonedChip = masterChip50Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      end
    elseif moneyValue == 100 then
      if moneyColor == "Red" then
        clonedChip = masterChip100Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Yellow" then
        clonedChip = masterChip100Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        --clonedChip.flip()
      elseif moneyColor == "Green" then
        clonedChip = masterChip100Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
      elseif moneyColor == "Blue" then
        clonedChip = masterChip100Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Orange" then
        clonedChip = masterChip100Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Purple" then
        clonedChip = masterChip100Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      end
    elseif moneyValue == 500 then
      if moneyColor == "Red" then
        clonedChip = masterChip500Red.clone(spawnParams)
       --print"Red 500 spawned")
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Yellow" then
        clonedChip = masterChip500Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        --clonedChip.flip()
      elseif moneyColor == "Green" then
        clonedChip = masterChip500Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
      elseif moneyColor == "Blue" then
        clonedChip = masterChip500Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Orange" then
        clonedChip = masterChip500Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      elseif moneyColor == "Purple" then
        clonedChip = masterChip500Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
      end
    end
  end
  zonePos = 0
end

---------------------------------------
----------------Returns----------------
---------------------------------------

--Spawns Invested Money when Poker Chips Interact with an Industry Card
function generateReturns(num, zone, moneyColor, color, moneyValue)
 --print"Spawning Returns")
  player_id = false

  --zone = industryColor[moneyColor]
  --print(zone.getName())
 --print"Owner: " .. color)
 --print"zone name: " .. zone.getName())
 --print"zone guid: " .. zone.getGUID())

  zonePos = industries[zone.getGUID()]
 --printtostring(zonePos))

  currentPos = {}

  for i=1,num,1 do
    currentPos = {}
    if color == "Red" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {-12.55, 1.07, -15.73}
        currentPos[2] = {-8.73, 1.07, -15.73}
        currentPos[3] = {-4.76, 1.07, -15.73}
        currentPos[4] = {-0.82, 1.07, -15.73}
      elseif moneyValue == 50 then
        currentPos[1] = {-10.95, 1.07, -15.73}
        currentPos[2] = {-7.13, 1.07, -15.73}
        currentPos[3] = {-3.16, 1.07, -15.73}
        currentPos[4] = {0.78, 1.07, -15.73}
      elseif moneyValue == 100 then
        currentPos[1] = {-12.55, 1.07, -17.33}
        currentPos[2] = {-8.73, 1.07, -17.33}
        currentPos[3] = {-4.76, 1.07, -17.33}
        currentPos[4] = {-0.82, 1.07, -17.33}
      elseif moneyValue == 500 then
        -- z - 1.6
        currentPos[1] = {-10.95, 1.07, -17.33}
        currentPos[2] = {-7.13, 1.07, -17.33}
        currentPos[3] = {-3.16, 1.07, -17.33}
        currentPos[4] = {0.78, 1.07, -17.33}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Orange" then
      if moneyValue == 10 then
        -- x - 1.6
        currentPos[1] = {-25.6, 1.07, 1.71}
        currentPos[2] = {-25.6, 1.07, -2.10}
        currentPos[3] = {-25.6, 1.07, -6.08}
        currentPos[4] = {-25.6, 1.07, -10.01}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z + 1.6
        currentPos[1] = {-25.6, 1.07, 0.11}
        currentPos[2] = {-25.6, 1.07, -3.7}
        currentPos[3] = {-25.6, 1.07, -7.68}
        currentPos[4] = {-25.6, 1.07, -11.61}
      elseif moneyValue == 100 then
        currentPos[1] = {-27.20, 1.07, 1.71}
        currentPos[2] = {-27.20, 1.07, -2.10}
        currentPos[3] = {-27.20, 1.07, -6.08}
        currentPos[4] = {-27.20, 1.07, -10.01}
      elseif moneyValue == 500 then
        -- z + 1.6
        currentPos[1] = {-27.20, 1.07, 0.11}
        currentPos[2] = {-27.20, 1.07, -3.7}
        currentPos[3] = {-27.20, 1.07, -7.68}
        currentPos[4] = {-27.20, 1.07, -11.61}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Green" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {-11.28, 1.07, 15.57}
        currentPos[2] = {-15.09, 1.07, 15.57}
        currentPos[3] = {-19.07, 1.07, 15.57}
        currentPos[4] = {-23.00, 1.07, 15.57}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z - 1.6
        currentPos[1] = {-12.88, 1.07, 15.57}
        currentPos[2] = {-16.69, 1.07, 15.57}
        currentPos[3] = {-20.67, 1.07, 15.57}
        currentPos[4] = {-24.6, 1.07, 15.57}
      elseif moneyValue == 100 then
        currentPos[1] = {-11.28, 1.07, 17.17}
        currentPos[2] = {-15.09, 1.07, 17.17}
        currentPos[3] = {-19.07, 1.07, 17.17}
        currentPos[4] = {-23.00, 1.07, 17.17}
      elseif moneyValue == 500 then
        -- x- 1.6
        currentPos[1] = {-12.88, 1.07, 17.17}
        currentPos[2] = {-16.69, 1.07, 17.17}
        currentPos[3] = {-20.67, 1.07, 17.17}
        currentPos[4] = {-24.6, 1.07, 17.17}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Blue" then
      if moneyValue == 10 then
        -- z - 1.6
        currentPos[1] = {11.94, 1.07, 15.61}
        currentPos[2] = {8.12, 1.07, 15.61}
        currentPos[3] = {4.15, 1.07, 15.61}
        currentPos[4] = {0.22, 1.07, 15.61}
      elseif moneyValue == 50 then
        -- x - 1.6
        -- z - 1.6
        currentPos[1] = {10.34, 1.07, 15.61}
        currentPos[2] = {6.52, 1.07, 15.61}
        currentPos[3] = {2.55, 1.07, 15.61}
        currentPos[4] = {-1.38, 1.07, 15.61}
      elseif moneyValue == 100 then
        currentPos[1] = {11.94, 1.07, 17.21}
        currentPos[2] = {8.12, 1.07, 17.21}
        currentPos[3] = {4.15, 1.07, 17.22}
        currentPos[4] = {0.22, 1.07, 17.23}
      elseif moneyValue == 500 then
        -- x -1.6
        currentPos[1] = {10.34, 1.07, 17.21}
        currentPos[2] = {6.52, 1.07, 17.21}
        currentPos[3] = {2.55, 1.07, 17.22}
        currentPos[4] = {-1.38, 1.07, 17.23}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "Purple" then
      if moneyValue == 10 then
        --x - 1.6
        currentPos[1] = {25.56, 1.07, -0.69}
        currentPos[2] = {25.56, 1.07, 3.29}
        currentPos[3] = {25.56, 1.07, 7.10}
        currentPos[4] = {25.56, 1.07, 11.06}
      elseif moneyValue == 50 then
        -- x - 1.6, z + 1.6
        currentPos[1] = {25.56, 1.07, 0.91}
        currentPos[2] = {25.56, 1.07, 4.89}
        currentPos[3] = {25.56, 1.07, 8.7}
        currentPos[4] = {25.56, 1.07, 12.66}
      elseif moneyValue == 100 then
        currentPos[1] = {27.15, 1.07, -0.69}
        currentPos[2] = {27.12, 1.07, 3.29}
        currentPos[3] = {27.16, 1.07, 7.10}
        currentPos[4] = {27.12, 1.07, 11.06}
      elseif moneyValue == 500 then
        -- z + 1.6
        currentPos[1] = {27.15, 1.07, 0.91}
        currentPos[2] = {27.12, 1.07, 4.89}
        currentPos[3] = {27.16, 1.07, 8.7}
        currentPos[4] = {27.12, 1.07, 12.66}
      end

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if color == "White" then
      --print("moneyValue")
      if moneyValue == 10 then
        currentPos[1] = {10.22, 1.07, -15.80}
        currentPos[2] = {14.03, 1.07, -15.80}
        currentPos[3] = {18.01, 1.07, -15.80}
        currentPos[4] = {21.94, 1.07, -15.80}
      elseif moneyValue == 50 then
        currentPos[1] = {11.82, 1.07, -15.80}
        currentPos[2] = {15.36, 1.07, -15.80}
        currentPos[3] = {19.61, 1.07, -15.80}
        currentPos[4] = {23.54, 1.07, -15.80}
      elseif moneyValue == 100 then
        currentPos[1] = {10.22, 1.07, -17.40}
        currentPos[2] = {14.03, 1.07, -17.40}
        currentPos[3] = {18.01, 1.07, -17.40}
        currentPos[4] = {21.94, 1.07, -17.40}
      elseif moneyValue == 500 then
        currentPos[1] = {11.82, 1.07, -17.40}
        currentPos[2] = {15.36, 1.07, -17.40}
        currentPos[3] = {19.61, 1.07, -17.40}
        currentPos[4] = {23.54, 1.07, -17.40}
      end
     --print"moneyValue: " .. tostring(moneyValue))
     --printtostring(currentPos[zonePos]))

      spawnParams = {
          position          = currentPos[zonePos],
      }
    end
    if moneyValue == 10 then
      if moneyColor == "Red" then
        clonedChip = masterChip10Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Yellow" then--all good
        clonedChip = masterChip10Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Green" then
        clonedChip = masterChip10Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Blue" then
        clonedChip = masterChip10Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Orange" then
        clonedChip = masterChip10Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Purple" then
        clonedChip = masterChip10Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      end
    elseif moneyValue == 50 then
      if moneyColor == "Red" then
        clonedChip = masterChip50Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Yellow" then--to check
        clonedChip = masterChip50Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Green" then
        clonedChip = masterChip50Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Blue" then
        clonedChip = masterChip50Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Orange" then
        clonedChip = masterChip50Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Purple" then
        clonedChip = masterChip50Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      end
    elseif moneyValue == 100 then
      if moneyColor == "Red" then
        clonedChip = masterChip100Red.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Yellow" then
        clonedChip = masterChip100Yellow.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        --clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Green" then
        clonedChip = masterChip100Green.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
      elseif moneyColor == "Blue" then
        clonedChip = masterChip100Blue.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Orange" then
        clonedChip = masterChip100Orange.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      elseif moneyColor == "Purple" then
        clonedChip = masterChip100Purple.clone(spawnParams)
        clonedChip.setColorTint(moneyColor)
        clonedChip.flip()
        --print(moneyColor .. " chip spawned")
      end
    end
  end
  zonePos = 0
end



--------------------------------------------------------------------------------
----------------------------------Print Message---------------------------------
--------------------------------------------------------------------------------

---------------------------------------
--------------Card Names---------------
---------------------------------------

--Done in Industry Spawn

---------------------------------------
--------------Chip Totals--------------
---------------------------------------

function printSectionTotals(zone, player_color)
  local total = 0
  total = total + getChipsOfColor(zone, "Plain", 5, player_color)
  for idx, i in ipairs(industries) do
    total = total + getChipsOfColor(zone, i.getVar('color'), idx, player_color)
  end
  printZoneTotal(total, player_color)
end

--------------------------------------------------------------------------------

function printZoneTotal(total, player_color)
  if total > 0 then
    --print("total= " .. tostring(total))
    --print(player_color)
    --print(totalText[player_color].getValue())
    if total >= 1000000 then
      total = total / 1000000
      totalText[player_color].setValue("$" .. tostring(total) .. "M")
    elseif total >= 10000 then
      total = total / 1000
      totalText[player_color].setValue("$" .. tostring(total) .. "K")
    else
      totalText[player_color].setValue("$" .. tostring(total))
    end
  else
    totalText[player_color].setValue("$0")
  end
end

--------------------------------------------------------------------------------

function getChipsOfColor(zone, chip_color, industry_number, player_color)

  chip1000 = 0
  chip5000 = 0
  chip10000 = 0
  chip50000 = 0
  sum = 0
  result = 0
  toprint = 0
  if zone.getObjects() ~= nil then
    for idx, c in ipairs(zone.getObjects()) do
      if c.getVar('color') == chip_color then
        if c.getQuantity() == -1 then
          result = 1
        else
          result = c.getQuantity()
        end
        if c.getValue() == 10 then
          chip1000 = chip1000 + result
        elseif c.getValue() == 50 then
          chip5000 = chip5000 + result
        elseif c.getValue() == 100 then
          chip10000 = chip10000 + result
        elseif c.getValue() == 500 then
          chip50000 = chip50000 + result
        end
      end
    end
    chip1000 = chip1000 * 1000
    chip5000 = chip5000 * 5000
    chip10000 = chip10000 * 10000
    chip50000 = chip50000 * 50000
    sum = chip1000 + chip5000 + chip10000 + chip50000

    if industry_number == 1 then
      if sum > 0 then
        toprint = sum
        if sum >= 1000000 then
          toprint = toprint / 1000000
          industry1TotalText[player_color].setValue("$" .. tostring(toprint) .. "M")
        elseif sum >= 10000 then
          toprint = toprint / 1000
          industry1TotalText[player_color].setValue("$" .. tostring(toprint) .. "K")
        else
          industry1TotalText[player_color].setValue("$" .. tostring(toprint))
        end
      else
        industry1TotalText[player_color].setValue("$0")
      end
      industry1TotalText[player_color].TextTool.setFontColor("Black")
    elseif industry_number == 2 then
      if sum > 0 then
        toprint = sum
        if sum >= 1000000 then
          toprint = toprint / 1000000
          industry2TotalText[player_color].setValue("$" .. tostring(toprint) .. "M")
        elseif sum >= 10000 then
          toprint = toprint / 1000
          industry2TotalText[player_color].setValue("$" .. tostring(toprint) .. "K")
        else
          industry2TotalText[player_color].setValue("$" .. tostring(toprint))
        end
      else
        industry2TotalText[player_color].setValue("$0")
      end
      industry2TotalText[player_color].TextTool.setFontColor("Black")
    elseif industry_number == 3 then
      if sum > 0 then
        toprint = sum
        if sum >= 1000000 then
          toprint = toprint / 1000000
          industry3TotalText[player_color].setValue("$" .. tostring(toprint) .. "M")
        elseif sum >= 10000 then
          toprint = toprint / 1000
          industry3TotalText[player_color].setValue("$" .. tostring(toprint) .. "K")
        else
          industry3TotalText[player_color].setValue("$" .. tostring(toprint))
        end
      else
        industry3TotalText[player_color].setValue("$0")
      end
      industry3TotalText[player_color].TextTool.setFontColor("Black")
    elseif industry_number == 4 then
      if sum > 0 then
        toprint = sum
        if sum >= 1000000 then
          toprint = toprint / 1000000
          industry4TotalText[player_color].setValue("$" .. tostring(toprint) .. "M")
        elseif sum >= 10000 then
          toprint = toprint / 1000
          industry4TotalText[player_color].setValue("$" .. tostring(toprint) .. "K")
        else
          industry4TotalText[player_color].setValue("$" .. tostring(toprint))
        end
      else
        industry4TotalText[player_color].setValue("$0")
      end
      industry4TotalText[player_color].TextTool.setFontColor("Black")
    elseif industry_number == 5 then
      if sum > 0 then
        toprint = sum
        if sum >= 1000000 then
          toprint = toprint / 1000000
          uninvestedTotalText[player_color].setValue("$" .. tostring(toprint) .. "M")
        elseif sum >= 10000 then
          toprint = toprint / 1000
          uninvestedTotalText[player_color].setValue("$" .. tostring(toprint) .. "K")
        else
          uninvestedTotalText[player_color].setValue("$" .. tostring(toprint))
        end
      else
        uninvestedTotalText[player_color].setValue("$0")
      end
      uninvestedTotalText[player_color].TextTool.setFontColor("Black")
    end
  end
  return sum
end

--------------------------------------------------------------------------------
----------------------------------Player Actions--------------------------------
--------------------------------------------------------------------------------


---------------------------------------
--------------Player Turn--------------
---------------------------------------

function onPlayerTurnStart(player_color_start, player_color_previous)
  --print("Checking for returns")
  --print("Player color = " .. player_color_start)
  local lengthNum = 0
 --print"color: " .. tostring(player_color_start))
 --print"color: " .. Turns.turn_color)
 --print"Zone: " .. tostring(playerChipsZone[player_color_start]))
-- --print"ZoneGUID: " .. playerChipsZone[player_color_start].getGUID())
  local zone = playerChipsZone[player_color_start]
 --print"zoneGUID: " .. zone.getGUID())
  objects_list = zone.getObjects()
 --print"objects_list: " .. tostring(objects_list))
  if zone.getObjects() ~= nil then
    --objects_list = zone.getObjects()
   --print"we're in")
    for k, v in pairs(zone.getObjects()) do -- for every key in the table with a corresponding non-nil value
     --print"we're in again")
     --print"zone object: " .. tostring(v))
      if v.getQuantity() ~= -1 then
       --print"It is a stack")
        lengthNum = lengthNum + v.getQuantity()
        chipColor = getObjectFromGUID(v.guid).getVar('color')
      else
       --print"It's not a stack")
        lengthNum = lengthNum + 1
        chipColor = getObjectFromGUID(v.guid).getVar('color')
      end
    end
   --print"Object list finished")

    ----print("chipColor = " .. chipColor)

   --printtostring(lengthNum))

    if lengthNum > 0 then
      objects = zone.getObjects()
      count = 1
      --loop through industry colors
      for idx=1,4,1 do
        color = industries[idx].call('getColor')
       --print"Color Loop: " .. color)
        industryZone = industries[idx]
        --for _, i in ipairs(industries) do
        --  if industryColor[i.getGUID()] == color then
        --   --print"found industry")
        --    industryZone = i
        --   --printi.getName())
        --    break
        --  end
        --end

       --print"industry zone: " .. tostring(industryZone)) --.getName())
       --print"industry name: " .. industryZone.getName())

        chipCount = 0

        chipCountDivided = 0
        --for each object in the zone
        for idx2, chip in pairs(objects) do
          --Does the chip color match the industryColor?
          --if chip.is_face_down ~= true then
            if color == chip.getVar('color') then
              --Check if object is container
              if chip.getQuantity() == -1 then
               --print"Record single chip: " .. tostring(chip.getQuantity()))
                chipCount = chipCount + chip.getVar('chipValue')
               --printtostring(chipCount))
              else
               --print"Record chip stack: " .. tostring(chip.getQuantity()))
                chipCount = chipCount + (chipValues[chip.getValue()] * chip.getQuantity())
               --printtostring(chipCount))
              end
            end
          --end
        end
       --print"Done recording objects")
        --print("Final chipCount = " .. tostring(chipCount))
        if (chipCount / 10000) >= 1 then
         --print"Returns meet minimum")
          money10000 = 0
          money5000 = 0
          money1000 = 0
          chipCountDivided = chipCount / 10000
          value = industryValue[color] --call('getReturnValue')
         --print"industry value: " .. tostring(value))
          returnValue = value * chipCountDivided
          checkValue = returnValue
          while checkValue >= 0 do
            lastValue = checkValue
            checkValue = checkValue - 10000
            if checkValue >= 0 then
              money10000 = money10000 + 1
            end
          end
          if lastValue > 0 then
            checkValue = lastValue
            while checkValue >= 0 do
              lastValue = checkValue
              checkValue = checkValue - 5000
              if checkValue >= 0 then
                money5000 = money5000 + 1
              end
            end
          end
          if lastValue > 0 then
            checkValue = lastValue
            while checkValue >= 0 do
              lastValue = checkValue
              checkValue = checkValue - 1000
              if checkValue >= 0 then
                money1000 = money1000 + 1
              end
            end
          end
         --printtostring(money1000))
         --printtostring(money5000))
         --printtostring(money10000))
          if money1000 > 0 then
            generateReturns(money1000, industryZone, color, player_color_start, 10)
          end
          if money5000 > 0 then
            generateReturns(money5000, industryZone, color, player_color_start, 50)
          end
          if money10000 > 0 then
            generateReturns(money10000, industryZone, color, player_color_start, 100)
          end
        end
      end
    end
  end
end

---------------------------------------
-------------Pick Up Object------------
---------------------------------------

function onObjectPickUp(player_color, picked_up_object)
  --assign picked up object an ower
  picked_up_object.setVar('owner', player_color)
 --printtostring(picked_up_object) .. " owned by: " .. picked_up_object.getVar('owner'))
end

---------------------------------------
-------Dealing Cards to Players--------
---------------------------------------
function dealBonusCardToPlayer()
  bonusDeck.deal(1, inZone["color"])
end
