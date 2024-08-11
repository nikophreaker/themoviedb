import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:themoviedb/features/movies/ui/screens/movie_list_screen.dart';
import 'package:themoviedb/features/user/movies/ui/screens/user_profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;

  final _pageOptions = [
    const MovieListScreen(),
    const UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04101C),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Color(0xff04101C),
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: _currentPage == 0
                            ? Colors.white
                            : Colors.transparent)),
              ),
              child: IconButton(
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: _currentPage == 0 ? Colors.white : Colors.grey,),
                    Text(
                      'Beranda',
                      style: TextStyle(
                        color: _currentPage == 0 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    _currentPage = 0;
                  });
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(
                        color: _currentPage == 1
                            ? Colors.white
                            : Colors.transparent)),
              ),
              child: IconButton(
                icon: Column(
                  children: [
                    Icon(Icons.person, color: _currentPage == 1 ? Colors.white : Colors.grey,),
                    Text(
                      'User Profile',
                      style: TextStyle(
                        color: _currentPage == 1 ? Colors.white : Colors.grey,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  setState(() {
                    _currentPage = 1;
                  });
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "TheMovieDB",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: const Color(0xff04101C),
      ),
      body: _pageOptions[_currentPage]
    );
  }
}
