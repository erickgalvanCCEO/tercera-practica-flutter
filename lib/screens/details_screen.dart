import 'package:flutter/material.dart';
import 'package:peliculas/theme/theme.dart';
import 'package:peliculas/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no movie';
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const _CustomAppBar(),
            SliverList(
              delegate: SliverChildListDelegate([
                const _PosterAndTitle(),
                const SizedBox(
                  height: 20,
                ),
                const _Overview(),
                const _Overview(),
                const _Overview(),
                const CastingCards()
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: AppTheme.mainColor,
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: const EdgeInsets.all(0),
        title: Container(
          width: double.infinity,
          color: Colors.black26,
          alignment: Alignment.bottomCenter,
          child: const Text(
            'movies.com',
            style: TextStyle(fontSize: 25),
          ),
        ),
        centerTitle: true,
        background: const FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  const _PosterAndTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(top: 0),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 150,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Movie title',
                style: textTheme.headline6,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              Text(
                'Movie original tile',
                style: textTheme.subtitle2,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'movie votes',
                    style: textTheme.caption,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class _Overview extends StatelessWidget {
  const _Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTeme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        'Velit ullamco duis incididunt eiusmod. Laborum quis veniam sit laborum aute adipisicing incididunt non culpa occaecat fugiat occaecat. Dolor enim elit anim do ipsum ad dolor voluptate tempor eiusmod mollit dolor nulla ad.',
        textAlign: TextAlign.justify,
        style: textTeme.subtitle1,
      ),
    );
  }
}
