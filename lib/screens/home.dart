import 'package:counter_app/core/providers/servers_provider.dart';
import 'package:counter_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final serverProvider = Provider.of<ServerProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          MyText(
            text: serverProvider.selectedServer,
          ),
          const SizedBox(
            height: 20,
          ),
          MyText(
              text: serverProvider.isConnected ? "Connected" : "Disconnected"),
          const SizedBox(height: 20),
          SizedBox(
            height: 150,
            width: 150,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(75.0))),
              onPressed: () {
                serverProvider.toggleConnect();
              },
              child:
                  Text(serverProvider.isConnected ? "Disconnect" : "Connect"),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          DropdownButton(
            value: serverProvider.selectedServer,
            onTap: () {},
            onChanged: (String? server) {
              if (server != null) {
                serverProvider.changeServer(server);
              }
            },
            items: serverProvider.servers
                .map<DropdownMenuItem<String>>((String server) {
              return DropdownMenuItem<String>(
                value: server,
                child: Text(server),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
