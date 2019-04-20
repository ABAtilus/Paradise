#define ANNIVERSARY_HISPANIA_FILE "data/anniversary_of_hispania.txt"

/datum/holiday/hispania
	name = "Anniversary of Hispania"
	begin_day = 29
	begin_month = APRIL
	var/anniversary

/datum/holiday/hispania/celebrate()
	anniversary = file2text(ANNIVERSARY_HISPANIA_FILE)
	if((text2num(time2text(world.realtime, "YY")) - 16) > text2num(anniversary)) // Si el a�o actual - 16 (a�o en el que se fund� Hispania) es mayor al a�o de aniversario, entonces aniversario++
		fdel(ANNIVERSARY_HISPANIA_FILE)
		anniversary = text2num(anniversary)
		anniversary++
		text2file("[anniversary]", ANNIVERSARY_HISPANIA_FILE)
	else
		return

/datum/holiday/hispania/greet()
	return "Hoy hispania cumple [anniversary] a�os!"