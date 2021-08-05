extends Node2D


func _ready():
	get_tree().connect("network_peer_connected",self,"_connected")


func _on_Create_Host_pressed():
	var server = NetworkedMultiplayerENet.new()
	server.create_server(8080,10)
	get_tree().set_network_peer(server)


func _on_Connect_to_server_pressed():
	var client = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1",8080)
	get_tree().set_network_peer(client)

func _connected(client_id):
	Singlton.user_id = client_id
	var game = preload("res://scenes/world.tscn").instance()
	get_tree().get_root().add_child(game)
	hide()
