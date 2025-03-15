import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Playlist Header Section
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Playlist Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    "data:image/png;base64,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", // Replace with actual image URL
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 16),
                // Playlist Details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "PLAYLIST - 6 SONGS",
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Auj",
                      style: GoogleFonts.roboto(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Shuffle Play Button
          // Shuffle Play Button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                minimumSize: Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shuffle, color: Colors.black), // Shuffle Icon
                  SizedBox(width: 10), // Spacing between icon and text
                  Text(
                    "Shuffle Play",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),


          SizedBox(height: 16),

          // Songs List
          Expanded(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(Icons.drag_indicator, color: Colors.grey[600]),
                  title: Text(
                    songs[index]["title"]!,
                    style: GoogleFonts.roboto(fontSize: 16),
                  ),
                  subtitle: Text(
                    songs[index]["artist"]!,
                    style: GoogleFonts.roboto(color: Colors.grey[600]),
                  ),
                  trailing: Icon(Icons.more_vert, color: Colors.grey[600]),
                  onTap: () {
                    // Handle song click
                  },
                );
              },
            ),
          ),

          // Mini Music Player
          _miniMusicPlayer(),

          // Bottom Navigation Bar
          _bottomNavigationBar(),
        ],
      ),
    );
  }

  // Sample Mini Music Player
  Widget _miniMusicPlayer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.white,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAACoCAMAAABt9SM9AAABZVBMVEUAAAABt/8AAAMAuP8DAAAAAAYAuf8GAAAGu/8Duv8AAQAAvf8BAggBAQsBAQ0BAgUBAxIBABIBBBoDACMCBRcDBB8EADYEADoCADEBBSsABBgDAGACBhUDAFoBBBwDACkJqPgHAEYDAEIFsv8HDSUDBygBBzIDADMBBx0BAE0BDm8DHH8HOZEHS6kEV7EHWbcEH3MDCmQBAFMGSKsHbMUGh98Dm+4JYLUFQZMFFW0JQKgIdtQGluYJaLoJLIINou8HfdQEIYoGM5YFFV8Go+0IM2cLX6AQe8QMQW0NFT0IIEYHb7cHF0kJVIEHAE8JjM0JOoMLYM8QHV4LL3sKJVkKhtYPdtwRNGwGUZ0JlNUMcN0HPnIISIwKYZ4MWowJL3EJhr0JL1YHHjkJI1QFGz4KouIIdrAKTYcJa5cEkPQIRmkGMU0Ifa8DJ6AKSYkEmv0Fg/ADd/UEPcYIY6kEW+oLR7wJWeigtJP9AAANIUlEQVR4nO2di18TxxbHZ+exO5t9v5IQMQkJAV8otRqxBbGSghSUSrVKFVu9hda+7q3V+/ffmU2CYHay0VtNGeb7+YhKsvns/j7nnDlzzswEAIVCoVAoFAqFQqFQKBQKhUKhUCgUCoVCoVAoFArF+wPhuO/geAAzGPc9/cNIBeE/uDaeDUkf2wNKsbfoC+IxILGJ08W2mV6Q/469phTrwXRgqkDbtl3f9YM4jsPq5GQc+C7D5i8BosTqGRW3H8dxfb+atFoTM7XZcrFYmi3P1GqtM3GlwhWzPchcctx3O2Zg16xsJ64krYlS4+ypc+cvzF28eOnipUtzF+Y/udwolltJhRmZk7rjSTUv2AvphPjxZNKaPXvq/KdXrrbrTUStFKo36+2r1xauXy7WkjMxj2Jp8Br3jY8D/uDEI44fnmkVp8599nm7yfTRdU1DXXRT1yiXbHHpxuXiTBL6DvFOrF7MqDx3MplpnPrs8zqzJKQhTUv/cBBK/410hCxreWn+bLkVusy4yMnzxTRY2W48PdM4d6lNTVMbim41HyxcLkdxwEL9SdMKpJlCnLTOnr9SZ67GPG64WIia1vLF07NRhSUT4CQZFzMrz3Piaqt07kqTouE6vQFZ7YXGTOK7xDtJ4yJPFtzpmdOX6lTXRhZL0yi9Ol+KqizQgxOTdbHI7pxplc5ftdA7aYV47Fo6Xa6kWde4n+KjwBzIdsOJu3NNKyesZxqXtXijmASpK477ST4CkDhBUj51k2rmO1hVH10zm9ca1Uk2Kkruid3aAgvts1+06bs44BFMenNqohJw05JZLl4/ICRoNW4138MDezCNrcXLE6HryT4ksgmLnzTmmigvsWKplS4wPfaa1V6pVWzojftxPiS8EOpPly42rVzzMRmW2FOtznyt6toS2xZksT1uNeZENtOdCrKgpLV17cGXq2uaxf6Lst6MaOd6OU7rEJJCPM8Ny3PZ9oIQ1amldZq6bq1N3X68TgD+aq2pUT07F6PLK1HssKnAuJ/qA8G0SooXmjRLK900O4sbm8TAJFqvYYyB7RFgYOfOnpV5gaZ37k5MQltS0/JspzpzvZ7x6AhZ2tZtgJmnFtK3pkVk2y5AzH55Z42FsMEBAZlbpYRNq2U0LQhtx584vZgV23W6tokNHtPYEAC73Zz0b/bDw9h41rEGPRFp1kYtduWMW4SwpOFKVpEB6asYE96V6I9usN8g4wk/08t9ujxokIiir6OQe6tk8NTdCYtzWXk70h4Z/U7roT70m39CFryK7UGTRGZnKnGILV0iz5wwjuabdDAbRfo9l0Wmgab94f9BB1+oD8isI+vmTOIS+fzQds+Ubg6mmcjUdiOjJ03WdV3bwsH2YkaMR/o3tdghconFQrcbl+fo4IxQ71y7bxQOIlTWpekLxjcPsqaTZqfEHFGyJgZkU8K77azx/9urX2IyNOp0lXj4bebcmz6qhY5MYvHobsfli4MDmqnvfHMf5zUg+MsG/s7MzOQ7jSRwZBILeMRtXV4eNCy6N0NY1jCCWND4KXvaYz2KJl2ZxOIFv9rC24VRZJrtWQLyCy2pWPhxdlUHdRpV15EojfdsN2lcfdsLdY0uGHiErhZ/S8FYy64XIuvJhCtT69Ujce28NjC/MxdvYDhCxzR9R2NZVNdZng1taXItpodbLV0ZyMCRtToBci2rn1Q8EdZWre+TkEhTj4fMC0/XB1P3+iYguQsge0k8fiysrlprEcseJBELci+cG8wb6M3ZEdbE9C1rU1hjRvWpxJUkaPHCe7V4MyPJuoBHWFjbtyzQEfvh14krSaGGV96Ts/VBL6JLxgitv75YotGQf9BGVJEk0yLE8aOFjFKnuYh7ayXFFx8qQ/xhaQLb0peLiSPH4gcInbB8xcoQawsf7BcQX9yjgI2OyLSotp24clgWhHa1tJjxoKhjgJG6yl21wK5oPET0SeITKfo8kLjJ3cHKHXvGZmWknRN9R3woWvemWxu1ihRisfjuJzeyxn1kPQNe7pB/UCwF31NRzDIXa5OOBLV49pR2HGVUZ7hYT4GXu+LxsFiiTEvvNEJXgpjFntMOo6WscIOsfeCBEYpZvQh/TSgW0rblEMsjXly+mRmb6RogkORsAuhbVgF0hiwn2eZ9i4/1TB8MXiQNi5n1c0R3cHdP4dAPOEi0ftDFaemTyJGg8MA3nVQb7UyxUDPB+RE+/RSu1jPxKnBrNZJhwsMDfLUxWHLgYml01/BGMojUsvBW9goRLtYGS7QkEIvnpFOZYvFGVohHFQt6+Lmw8GCuRb4MluXZJJyqC6KNtWrAUSpRadQi+GlG47FvWa4Ei4/4yqFwKqNj2H3I+joZZYtqr/KA9wSfQzeqUrghi1mVqbYg2iBrAzijzQ7ZJxGhI9KNUBax4uIDUWhG2r8wyd9v2a3keB6+kz0iyiRWOaNO2n/MLQPkpVo9sVh6CwyU+UmmLGLxzv1ga+cAaxfnVZf7Ex4PGs+zVbdWq3IEeCZWdE0oFjLpMwxHEQt4Bv5xLztmWbuxDGLxUBMnC0I3RJq5R0aaTQNc2aGCvVH0YSBHqRSSIBKLxc1if0SxfhWXHe5LI5YTbTeHbAGzmkneQVBdsYQZPGpuVkbJQP7p8D1zbtjIWON4SK1VHuOHfkoqViAQC6G9KJChy5puMAzLmdW/PuaWkbPnORXL+EXY3tkPfBnE4ouz0qAlNi2EOiNZ1nNR31CzfqrIUM7iEOJHK8P2raJma6hl9VIH4wfBMKFrLGRJ0mQlthM22sM2+ZrPhlpWX6wdwWdYnYlYErH4brBwRjg75NDb+W4I8I7IlekG8eVwQsAX/jnhX8M2RVu7uQEeACxu38uSknI84iYr4kwL6WlaOuwTUjf8WZCT6p1aLNEKXJbE17JWO/QeVn+xkB+zAPglYx+dltbEsC/PrkP2pL77SJhpmfQJzhkN+Q/ws0AstBm4x79134ev/QummqIsSTe/F2rVC0U2xsa6lnm+AaKLhBmWLCGre65YsCY6UUyvl4RTw96vDePXfT1j+x2/mj52HXm8sLtSMtgW5aXmIhaJVWCpPZtA/7LfoZaOsuozLP2vuRIZVte0/KpofkgfCLc6GXd+29ljIXzIyW3WU8e1ZTrENN3pFItardYjgVhsOkiprpu6uG/PDSsgI7XTjhHEdiuPMuuc5ovrmV7IW1+3M5aiHkE3H/s26R1wIA3EtoPkQZYjmlvZpT/eVb2TnS28gW5hV4ay31FYiOdpvP7WyTJIp+0FIzNL4hsFfh5S2ekehVQMHHlyrAOg5wThxbeOStGR9eL3Gj8qJOMCWDD2c45Dsh4TV6a0oQc/ZsypRotHgxCl7etBplT8CoyHLfZLVykH/HwV2byQUWCOGDw8dBoUYjnBi08AKWQ/LPttbPwmPkNL1+lOEtrS7J07AstM7cDdOOSHpvbdZQJFxXMIHMfA+0K1dNTcDOzRFsMdO/jyDyeItg4GOFq/V+QnPwlNw3eYJ66J1KL0D+I6UvQpBuHTaeIG0U43DiHr35/VgGfbwqNkIH8FCm2LrmLfk2CJcibpUkfousW9rlr/+YKf9UGGLKFhE2TitmY3MnNZa9fwHcky96MUbOaJjQeUxZs/f5/1SfoNKMIHhn5ICsn8yxcD5QqErC3Hl2avrwDIj8M4dUlr/vlyJXa84WIVgN+KAWjcerufjTS6VnUceXaRZ8M8kfjR/Is/X16fqbhMLDg06mB7fdp33b8Op7JIR7q24QaEyDkQvoHNYWzw/LtXL+eLCf8eInt4RlnAYL1VrG0dzWStzpdOwL+Q52Pd9diA+Pm9l+cb/LhfwsUa7kkE4Mbd3SNzJJOulYIKkXYgfAPx8I/3vijNtio8XI1yhRMdWXSrU3MXB+5o1x5zCnj99fUo5FspR9vxm67KOuSFdOd+ENsynxP8BghulFyfwBG//Itvq2h1emLpvB27FQWTLpDfBTmF1gzfJzaqXbC3TX51MPmmVHtqBK4sq4tycSZskNOqf4uHnwZLtButtP3IcL1hOb9csLnxO3Lh3kJjWbcsq7NbxoGTVhlORMQCwBMUr8Rs33u1vWQ1136qAv7dfTlL5qXi3R905rNX97aXNgF0eDnmJGQM/wf+9n9ffb2ZhvWTEtjfH1y+9er1V65N4EnywPekkNRev7zgGEqqUfCrs69v3Re0gBRHga1g5fWNd045TihxAm7Nb8td5/ubKICC70/c2p4e940cD8hkQFbmN8d9G8eECei68yvr476N40ES287E/ApWqcMIQIfNKLfn141x38hxoOAAAirz29OT476T44AHPQJmV26tq/whjzRUEQKmo2mVx+cBYYHpRSCeTGRbafsB6J7a4wFSCcd9K/98oMPF4pKpND6PVKj0mKOCRNsKPxgkPTWKBy5VVs4F9kVSNfhc4IFI0n6r6N8I7PfroQSnTX9oIDhYjKXEygPmnwqoOIwSS6FQKBQKhUKhUCgUimPG/wDPlA3DAVNTiwAAAABJRU5ErkJggg==", // Replace with actual song image
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jhalleya",
                style: GoogleFonts.roboto(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Marjaan",
                style: GoogleFonts.roboto(fontSize: 14, color: Colors.grey[600]),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.play_arrow, size: 32),
        ],
      ),
    );
  }

  // Bottom Navigation Bar
  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.music_note), label: "Music"),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: "Contribute"),
        BottomNavigationBarItem(icon: Icon(Icons.mic), label: "Identify"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      ],
    );
  }
}

// Sample Song List
List<Map<String, String>> songs = [
  {"title": "Aansu - Auj", "artist": "Auj"},
  {"title": "Raat - Auj", "artist": "Auj"},
  {"title": "Angraiziyan & Laung Gawacha", "artist": "Auj"},
  {"title": "Keh Dena - Auj", "artist": "Auj"},
  {"title": "O Jaana", "artist": "Auj"},
];
