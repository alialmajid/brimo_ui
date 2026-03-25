import 'package:flutter/material.dart';

void main() {
  runApp(const BrimoUIApp());
}

class BrimoUIApp extends StatelessWidget {
  const BrimoUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brimo UI',
      theme: ThemeData(
        primaryColor: const Color(0xFF00529C)
      ),
      home: const BrimoHomePage(),
    );
  }
}

class BrimoHomePage extends StatelessWidget {
  const BrimoHomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: const Color(0xFFF00529C),
        elevation: 0,
        title: const Text(
          "BRImo",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 120,
                color: const Color(0xFF00529C),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Selamat Datang",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        "Ali Al Majid",
                        style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text("Saldo Rekening", style: TextStyle(color: Colors.grey)),
                              SizedBox(height: 4),
                              Text("Rp 15.000.000", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            ],
                          ),
                          const Icon(Icons.visibility_off, color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text("Menu Umum", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          ),
          const SizedBox(height: 10),
          Container(
            height: 200,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                List<IconData> icons = [Icons.send, Icons.payment, Icons.qr_code, Icons.phone_android, Icons.account_balance_wallet, Icons.water_drop, Icons.bolt, Icons.more_horiz];
                List<String> labels = ["Transfer", "BIRVA", "QRIS", "Pulsa", "Ddompet", "PDAM", "Listrik", "Lainnya"];

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue[50],
                      child: Icon(icons[index], color: const Color(0xFF00529C)),
                    ),
                    const SizedBox(height: 4),
                    Text(labels[index], style: const TextStyle(fontSize: 12), overflow: TextOverflow.ellipsis),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}