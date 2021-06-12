SafariZoneSecretHouse_Script:
	jp EnableAutoTextBoxDrawing

SafariZoneSecretHouse_TextPointers:
	dw SafariZoneSecretHouseText1

SafariZoneSecretHouseText1:
	text_asm
	CheckEvent EVENT_GOT_SURFBOARD
	jr nz, .got_item
	CheckEvent EVENT_GOT_HM03
	jr nz, .get_surfboard
	ld hl, SafariZoneSecretHouseText_4a350
	call PrintText
	lb bc, HM_SURF, 1
	call GiveItem
	jr nc, .bag_full_HM03
	ld hl, ReceivedHM03Text
	call PrintText
	SetEvent EVENT_GOT_HM03
	jr .done
.get_surfboard
	ld hl, SafariZoneSecretHouseLonelyText
	call PrintText
	lb bc, SURFBOARD, 1
	call GiveItem
	jr nc, .bag_full_surfboard
	ld hl, ReceivedSurfboardText
	call PrintText
	SetEvent EVENT_GOT_SURFBOARD
	jr .done
.bag_full_HM03
	ld hl, HM03NoRoomText
	call PrintText
	jr .done
.bag_full_surfboard
	ld hl, SurfboardNoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, HM03ExplanationText
	call PrintText
.done
	jp TextScriptEnd

SafariZoneSecretHouseText_4a350:
	text_far _SecretHouseText_4a350
	text_end

ReceivedHM03Text:
	text_far _ReceivedHM03Text
	sound_get_item_1
	text_end

HM03ExplanationText:
	text_far _HM03ExplanationText
	text_end

HM03NoRoomText:
	text_far _HM03NoRoomText
	text_end

SafariZoneSecretHouseLonelyText::
	text_far _SafariZoneSecretHouseLonelyText
	text_end

ReceivedSurfboardText:
	text_far _ReceivedSurfboardText
	sound_get_item_1
	text_end

SurfboardNoRoomText:
	text_far _SurfboardNoRoomText
	text_end
