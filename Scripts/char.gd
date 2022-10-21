extends Object
class_name Char

#export(String) var name = "name"
#export(int) var hp = 0
#export(int) var atk = 0
#export(int) var def = 0
#export(int) var vel = 0
#export(int) var tx = 0
#export(int) var dn = 0
#export(int) var res = 0
#export(String) var buff = []
#export(String) var debuff = []
#export(int) var second_cd = 0
#export(int) var third_cd = 0

signal damage(target,atk) #conectar com o controle do mapa e ele chama is_dead() para cada personagem
signal area_debuff(target, debuff)

#func _init(name, hp, atk, def, vel, tx, dn, res, fcd, scd, tcd):
#	self.name = name
#	self.hp = hp
#	self.atk = atk
#	self.def = def
#	self.vel = vel
#	self.tx = tx
#	self.dn = dn
#	self.res = res
#	self.second_cd = scd
#	self.third_cd = tcd

func first_skill(target, char_atk, effect, acc):
	#calculate effect
	return char_atk

func second_skill(target, char_atk, effect, acc):
	#calculate effect
	return char_atk

func third_skill(target, char_atk, effect, acc):
	#calculate effect
	return char_atk

func defense(atk, effect):
	#aplicar resistencia
	#diminuir hp
	#verificar buff
	#aplicar efeito
	return (self.hp - self.atk)
	
func passive(target, effect, acc):
	return true
	
func is_dead(atk):
	var def = self.def
	var damage = atk - def

	if(self.hp <= damage):
		return true
	else:
		self.hp = self.hp - damage
		return false

func deal_debuff(debuff):
	return false
	
func revive(hp):
	self.hp = hp
	return
