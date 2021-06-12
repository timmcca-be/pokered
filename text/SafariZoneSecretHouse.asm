_SecretHouseText_4a350::
	text "Ah! Finally!"

	para "You're the first"
	line "person to reach"
	cont "the SECRET HOUSE!"

	para "I was getting"
	line "worried that no"
	cont "one would win our"
	cont "campaign prize."

	para "Congratulations!"
	line "You have won!"
	prompt

_ReceivedHM03Text::
	text "<PLAYER> received"
	line "@"
	text_ram wcf4b
	text "!@"
	text_end

_ReceivedSurfboardText::
	text "<PLAYER> got the"
	line "@"
	text_ram wcf4b
	text "!@"
	text_end

_HM03ExplanationText::
	text "HM03 is SURF!"

	para "#MON will be"
	line "able to ferry you"
	cont "across water!"

	para "And, this HM isn't"
	line "disposable! You"
	cont "can use it over"
	cont "and over!"

	para "You're super lucky"
	line "for winning this"
	cont "fabulous prize!"

	para "And if that"
	line "doesn't do it for"
	cont "you, you can also"
	cont "ferry yourself on"
	cont "that SURFBOARD!"
	done

_HM03NoRoomText::
	text "You don't have"
	line "room for this"
	cont "fabulous prize!"
	done

_SafariZoneSecretHouseLonelyText::
	text "Wow, you really"
	line "wanted to stay"
	cont "and talk to me?"

	para "That's so kind!"

	para "I've been alone,"
	line "staring at these"
	cont "walls, for @"
	text_decimal wPlayTimeHours, 1, 3
	text_start
	cont "hours and @"
	text_decimal wPlayTimeMinutes, 1, 3
	text_start
	cont "minutes now."

	para "Consider this my"
	line "way of saying"
	cont "thanks!"
	prompt

_SurfboardNoRoomText::
	text "You don't have"
	line "room for this"
	cont "token of"
	cont "gratitude!"
	done
