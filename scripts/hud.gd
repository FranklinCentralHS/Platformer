extends Control

@onready var coin_label = $newLayer/hudScore
var coins = 0

func addCoin():
    coins = coins + 1
    coin_label.text = str(coins)