import 'package:flutter/material.dart';

class MySliverAppbar extends StatelessWidget {
  const MySliverAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      toolbarHeight: 100,
      floating: true,
      pinned: true,
      snap: false,
      centerTitle: false,
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 35,
                    foregroundImage: AssetImage('assets/images/logo.jpg'),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('BADHAN', style: TextStyle(fontSize: 30)),
                      Text(
                        'Blood Donor Organization',
                        style: TextStyle(
                            fontSize: 10.5, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 35,
                ),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      bottom: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text("একের রক্ত অন্যের জীবন রক্তই হোক আত্মার বাঁধন",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                width: MediaQuery.of(context).size.width * .80,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search for something',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
