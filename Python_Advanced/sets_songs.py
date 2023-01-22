def run():
    favorite_songs = {"Dulce Soledad", "Don't Stop Me Now", "Let It Be", "Bohemian Rhapsody", "Johnny B. Goode", "Everyday Robots", "Dear", "Uprising", "Heavy Seas Of Love", "Time In The Bottle", "Escape", "We're Not Gonna Take It", "Buttercup", "Radio Gaga", "Lovesong", "Mr Blue Sky", "Veridis Quo", "Through the Fire and Flames", "Broken", "Lamento Boliviano"}
    songs_before_2000 = {"Bohemian Rhapsody", "Thunderstruck", "Burning Love", "Yesterday", "Mr Blue Sky","Cryin'", "Radio Gaga", "Lovesong", "Don't Stop Me Now", "Let It Be", "Johnny B. Goode", "Time In The Bottle", "Escape", "We're Not Gonna Take It", "Mr Blue Sky", "Should I Stay Or Should I Go", "Lamento Boliviano", "I'm Still Standing", "Twist" }

    all_songs = favorite_songs | songs_before_2000
    favorite_songs_before_2000 = favorite_songs & songs_before_2000
    favorite_songs_after_2000 = favorite_songs - songs_before_2000
    songs_before_2000_not_favorites = songs_before_2000 - favorite_songs
    favorite_songs_after_2000_more_notfavorites = songs_before_2000 ^ favorite_songs

    print(f'Canciones favoritas: {favorite_songs}' )
    print(f'Canciones antes del 2000: {songs_before_2000}')
    
    print(f'Todas las canciones sin repetir: {all_songs}' )
    print(f'Canciones favoritas antes del 2000:{favorite_songs_before_2000}' )
    print(f'Canciones favoritas después del 2000: {favorite_songs_after_2000}' )
    print(f'Canciones antes del 2000 no favoritas: {songs_before_2000_not_favorites}' )
    print(f'Canciones favoritas después del 2000 y no favoritas antes del 2000: {favorite_songs_after_2000_more_notfavorites}' )

if __name__ == '__main__':
    run()