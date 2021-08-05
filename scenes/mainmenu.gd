extends Node2D


func _ready():
	pass # Replace with function body.


func _on_Create_Host_pressed():
	var server = NetworkedMultiplayerENet.new()
	server.create_server(8080,10)
	get_tree().set_network_peer(server)


func _on_Connect_to_server_pressed():
	var client = NetworkedMultiplayerENet.new()
	client.create_client("127.0.0.1",8080)
	get_tree().set_network_peer(client)
