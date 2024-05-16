#json.extract! song, :id, :created_at, :updated_at
#json.url song_url(song, format: :json)
 
 json.id song.id
 json.title song.title
 json.artist song.artist
 json.rating song.rating