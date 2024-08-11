import 'package:flutter/material.dart';
import 'package:themoviedb/core/constants/app/string_constants.dart';
import 'package:themoviedb/features/user/movies/domain/domain/models/watchlist_data.dart';

class MovieWatchlistItem extends StatelessWidget {
  const MovieWatchlistItem({
    super.key,
    required this.movie,
    required this.faved,
    required this.favBtn,
    required this.watchBtn,
    required this.downloadBtn,
    required this.detailBtn,
  });

  final Results? movie;
  final bool faved;
  final VoidCallback favBtn;
  final VoidCallback watchBtn;
  final VoidCallback downloadBtn;
  final VoidCallback detailBtn;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: detailBtn,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.35,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                child: Image.network(
                  StringConstants.moviePotrait + (movie?.posterPath ?? ""),
                  width: MediaQuery.of(context).size.width * 0.35,
                  errorBuilder: (context, exception, stackTrace) {
                    return Text('Image 404 Not Found...');
                  },
                ),
              ),
              Text(
                movie?.title ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: IconButton(
                      onPressed: favBtn,
                      icon: Icon(
                        Icons.star,
                        color: faved ? Colors.yellow : Colors.grey,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: watchBtn,
                    icon: Icon(
                      Icons.playlist_add_rounded,
                      color: Colors.yellow,
                    ),
                  ),
                  IconButton(
                    onPressed: downloadBtn,
                    icon: Icon(
                      Icons.download,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
