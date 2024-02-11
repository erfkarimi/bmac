import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(context) {
    return Container(
      color: Colors.grey.shade200,
      child: ListView(
        children: [
          const SizedBox(height: 10),
          storySectionWidget(),
          const SizedBox(height: 10),
          post1Widget(),
          const SizedBox(height: 10),
          post2Widget()
        ],
      ),
    );
  }

  Widget storySectionWidget() {
    return Container(
      height: 100,
      width: double.infinity,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.only(left: 8)),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [bmacWidget(), const Text("Buy")],
            ),
          ],
        ),
      ),
    );
  }

  Widget post1Widget() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: SizedBox(width: 40, child: bmacWidget()),
            title: const Text(
              "Buy Me a Coffee",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("6 days a ago"),
            trailing: const Icon(
              Icons.more_horiz_outlined,
              size: 26,
            ),
          ),
          Image.asset(
            "assets/image/post1.png",
          ),
          const SizedBox(height: 10),
          const Text(
            "Multiply Your Shopping Delight on Shop",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            """
We understand that repeatedly going through
the purchasing process for the same item can
be tiring, especially when you want to buy
multiple quantities. That's why we're excited
to introduce a new feature that allows you to
increase the quantity of items available fo
purchase in your shop. With this update, your
supporters can now conveniently purchase
multiple quantities of the same item in just...
            """,
            style: TextStyle(fontSize: 17),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              const Icon(Icons.favorite_outline),
              const SizedBox(width: 8),
              const Text(
                "147",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(width: 14),
              Icon(MdiIcons.commentOutline),
              const SizedBox(width: 8),
              const Text(
                "27",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(width: 14),
              Icon(MdiIcons.navigationVariantOutline),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget post2Widget() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: SizedBox(width: 40, child: bmacWidget()),
            title: const Text(
              "Buy Me a Coffee",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text("6 days a ago"),
            trailing: const Icon(
              Icons.more_horiz_outlined,
              size: 26,
            ),
          ),
          Image.asset(
            "assets/image/post2.png",
          ),
          const SizedBox(height: 10),
          const Text(
            """
Now you can Add, Edit, or Delete
Messages Sent to Your Favorite Creators""",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            """
Missed adding a message while donating? No
problem at all! You have the option to add a
message later on. Accidentally sent a message?
Don't sweat it! You can easily delete it with a
simple click. Made a typo or want to refine your
message? Now you can just edit it! Yes, we have a
new update! You can now add, edit, or,
delete messages you have already sent to your
favourite creators. Why this update?...
""",
            style: TextStyle(fontSize: 17),
          ),
          Row(
            children: [
              const SizedBox(width: 20),
              const Icon(Icons.favorite_outline),
              const SizedBox(width: 8),
              const Text(
                "65",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(width: 14),
              Icon(MdiIcons.commentOutline),
              const SizedBox(width: 8),
              const Text(
                "10",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(width: 14),
              Icon(MdiIcons.navigationVariantOutline),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget bmacWidget() {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: const BoxDecoration(shape: BoxShape.circle),
      child: Image.asset(
        "assets/image/bmc-logo-yellow.png",
        width: 54,
      ),
    );
  }
}
