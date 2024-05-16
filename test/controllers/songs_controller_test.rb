require "test_helper"

class SongsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/Songs.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Song.count, data.length
  end

  test "show" do
    get "/Songs/#{Song.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "artist", "rating", "created_at", "updated_at"], data.keys
  end

  test "create" do
    assert_difference "Song.count", 1 do
      post "/Songs.json", params: { title: "suno re", artist: "jazzi", rating: 5 }
      assert_response 200
    end
  end

  test "update" do
    song = Song.first
    patch "/Songs/#{song.id}.json", params: { title: "Updated title" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated title", data["title"]
  end

  test "destroy" do
    assert_difference "Song.count", -1 do
      delete "/Songs/#{Song.first.id}.json"
      assert_response 200
    end
  end

end

