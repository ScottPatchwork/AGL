extends Panel

@onready var itemVis: Sprite2D = $CenterContainer/Panel/Display

func update(item: InvItem):
	if !item:
		itemVis.visible = false
	else:
		itemVis.visible = true
		itemVis.texture = item.texture
