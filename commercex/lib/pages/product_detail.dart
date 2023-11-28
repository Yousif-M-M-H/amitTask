import 'package:commercex/widgets/colored_container.dart';
import 'package:commercex/widgets/sizes_widgt.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black.withOpacity(0.1),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(Icons.arrow_back_ios),
              ),
            ),
            pinned: true,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Container(
                  width: double.maxFinite,
                  padding: const EdgeInsets.only(top: 5, bottom: 10),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: const Text(""),
                )),
            backgroundColor: Colors.purple,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y29tcHV0ZXJ8ZW58MHx8MHx8fDA%3D',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "\$2452.75 ",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple),
                          ),
                          const Text(
                            " \$32.5 ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              decoration: TextDecoration
                                  .lineThrough, 
                            ),
                          ),
                          const SizedBox(width: 9),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.red), 
                              borderRadius: BorderRadius.circular(
                                  4.0), 
                            ),
                            child: const Text(
                              " -32 Off ",
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        ],
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Macbook Air",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 13),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    "Up is opinion message mannersmity. Easy mr pain felt in. Too northward affection additions nay. He no an nature ye talent houses wisdom vanity denied.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 214, 208, 208),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Color",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                const  Row(
                    children: [
                      Stack(
                        children: [
                          ColoredConrainer(color: Colors.red),
                          Positioned.fill(
                            child: Center(
                              child: Icon(Icons.check , color: Colors.white,),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      ColoredConrainer(color: Colors.black),
                      SizedBox(width: 10),
                      ColoredConrainer(color: Colors.lightBlue),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Size",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 13),
                  SizedBox(
                    height: 40,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 6),
                      itemBuilder: (context, index) {
                        return SizesCard(number: index + 18);
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ElevatedButton(

          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: const Text(
            "Add to Cart",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
