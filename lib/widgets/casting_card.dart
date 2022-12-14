import 'package:flutter/material.dart';

class CastingCard extends StatelessWidget {
  const CastingCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      height: 180,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const _CastCard()),
    );
  }
}

class _CastCard extends StatelessWidget {
  const _CastCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/img/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/150x300'),
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            'Culpa aute ullamco culpa fugiat ad sunt sit.',
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
