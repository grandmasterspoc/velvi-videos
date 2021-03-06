# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string
#  nick_name   :string
#  event_date  :datetime
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Event < ApplicationRecord
  belongs_to :user
  has_many :videos

  # def create_event_video
    # users_at_event = User.where(event_nick_name: nick_name)
    # event_videos = get_event_videos_from_users(users_at_event)
    # save_and_resize_videos(event_videos)
    # add_all_videos_together
    # add_music_and_watermark_to_movie
  # end

  # def create_and_save_event_video
    # create_event_video
    # save_event_video
  # end

  # def save_event_video
  # end

  # def get_event_videos_from_users
    # instagram_videos = []
    # event_users.each do |u|
    #   begin
    #     i = open("https://api.instagram.com/v1/users/#{u[:uid]}/media/recent/?access_token=#{u[:token]}&count=3")
    #     client_attributes = OpenStruct.new(JSON.parse(i.read))
    #     data = JSON.parse(client_attributes.data.to_json)
    #     instagram_videos << data.select {|d| d if d["type"] == 'video' && d["tags"].include?("jumpfest2017")}
    #   rescue
    #     puts "poop"
    #     next
    #   end
    # end
  # end
  #
  # def save_and_resize_videos(vids)
  # end
  #
  # def add_all_videos_together
  # end
  #
  # def add_music_and_watermark_to_movie
  #   add_music_to_movie
  #   add_watermark_to_movie
  # end
  #
  # def add_music_to_movie
  # end
  #
  # def add_watermark_to_movie
  # end

  # def event_users
  #   [{:uid=>"513237576", :token=>"513237576.c2a4a7a.f09a4dfe68e84a03acb2a49cc1d46eee"},
  #   {:uid=>"240217408", :token=>"240217408.c2a4a7a.cbcfb83e28594f448c359ddb6875e9c0"},
  #   {:uid=>"20861372", :token=>"20861372.c2a4a7a.6053b1c9ddb2468aaf96da989eaec7ce"},
  #   {:uid=>"3507640387", :token=>"3507640387.c2a4a7a.e7811f089d0948d8ad1bff74928fa513"},
  #   {:uid=>"39724577", :token=>"39724577.c2a4a7a.5a9dea64e2674e71a3eaf930417da8aa"},
  #   {:uid=>"4078206837", :token=>"4078206837.c2a4a7a.a42a212fced34c59b5634635abceb3e7"},
  #   {:uid=>"9851243", :token=>"9851243.c2a4a7a.6c7e3044455d495aac6e06219adc90ac"},
  #   {:uid=>"38122643", :token=>"38122643.c2a4a7a.a35b101a9cb04a18b2cd170186a61083"},
  #   {:uid=>"1132384582", :token=>"1132384582.c2a4a7a.09a39feae1ca4e8dbfab5e6e1a003a46"},
  #   {:uid=>"3578387266", :token=>"3578387266.c2a4a7a.6278db98483c4e2fb5b5419cc1412178"},
  #   {:uid=>"2878785848", :token=>"2878785848.c2a4a7a.8e1039f325654d67826f33a9ef67eb2b"},
  #   {:uid=>"633533963", :token=>"633533963.c2a4a7a.1dd9dd15e5374327ab1211b564115bc6"},
  #   {:uid=>"1396439942", :token=>"1396439942.c2a4a7a.86f2cc0d44f549b88cc442468844485b"},
  #   {:uid=>"605638727", :token=>"605638727.c2a4a7a.64d8fd9e348a490ba7665768a7da5b34"},
  #   {:uid=>"2350712100", :token=>"2350712100.c2a4a7a.96aff69ea4dd4811b73d0062aba87946"},
  #   {:uid=>"28524776", :token=>"28524776.c2a4a7a.4510a1a501c74f6ea051fd0fd599f5cf"},
  #   {:uid=>"314491483", :token=>"314491483.c2a4a7a.0976b53b1ed643b9a5f4cf623117abc3"},
  #   {:uid=>"13774796", :token=>"13774796.c2a4a7a.353d3ca9532f489faa99c9a5132d7ab5"},
  #   {:uid=>"4723696412", :token=>"4723696412.c2a4a7a.1da71dde552d432c868cdcfad830b8ca"},
  #   {:uid=>"246424098", :token=>"246424098.c2a4a7a.8fee6c608e0e4114829dce58956c19f0"},
  #   {:uid=>"549055115", :token=>"549055115.c2a4a7a.c76abe5c41c04ce09c8ccb643e5a2667"},
  #   {:uid=>"5344014895", :token=>"5344014895.c2a4a7a.297489373ade4990a160aeb69ed442df"},
  #   {:uid=>"47208319", :token=>"47208319.c2a4a7a.a7222c587cab4da3a71fb6c0f1356ca9"},
  #   {:uid=>"442062915", :token=>"442062915.c2a4a7a.d9de7eb5a0ee435e88885ef30799b504"},
  #   {:uid=>"353602267", :token=>"353602267.c2a4a7a.3d9c3c36e5564a14aa65472a819a8898"},
  #   {:uid=>"188901172", :token=>"188901172.c2a4a7a.e63508feb08444bc8fd1edbfafb6b001"},
  #   {:uid=>"1697352228", :token=>"1697352228.c2a4a7a.b0fa639a5a6e419e92435d306acb2840"},
  #   {:uid=>"256939073", :token=>"256939073.c2a4a7a.76afa1b294e647a38c68ee8065cc32e5"},
  #   {:uid=>"513626718", :token=>"513626718.c2a4a7a.60313f138c02487e95544f6ebcbb3535"},
  #   {:uid=>"1007417293", :token=>"1007417293.c2a4a7a.3abdd81b12114695a259c3bfac8ba29a"},
  #   {:uid=>"663805494", :token=>"663805494.c2a4a7a.e254ba22f44443558e2b1063db8740df"},
  #   {:uid=>"1071771255", :token=>"1071771255.c2a4a7a.44096f6fa42645e1932c3e1008666caa"},
  #   {:uid=>"2305328871", :token=>"2305328871.c2a4a7a.e4bf13832bb648d4984f421f0ba045e8"},
  #   {:uid=>"1745759846", :token=>"1745759846.c2a4a7a.89483b31dd944fbfb8be57c180b8c225"},
  #   {:uid=>"197734714", :token=>"197734714.c2a4a7a.9b08a623952d43a8865d291fb060f27e"},
  #   {:uid=>"1216328700", :token=>"1216328700.c2a4a7a.0023cbe79fe04405ba2ad9913cad3663"},
  #   {:uid=>"2076141129", :token=>"2076141129.c2a4a7a.5af52a0be53d48bb846e3ba20779a6b1"},
  #   {:uid=>"570238373", :token=>"570238373.c2a4a7a.d25caba77a934597910d6636f7ecdd33"},
  #   {:uid=>"611120737", :token=>"611120737.c2a4a7a.226ead6245bf40d6ba2246dc35339544"},
  #   {:uid=>"385331119", :token=>"385331119.c2a4a7a.0aace442ab4d44f0a8fba2f8767259d0"},
  #   {:uid=>"271101942", :token=>"271101942.c2a4a7a.7d9b9062ed9f455283114e46f5d08af6"},
  #   {:uid=>"5648069082", :token=>"5648069082.c2a4a7a.828bb5047245443f84e1892e47528c88"},
  #   {:uid=>"4584690949", :token=>"4584690949.c2a4a7a.406795a0abb24f64bd49ecfd8c9cc542"},
  #   {:uid=>"2121472365", :token=>"2121472365.c2a4a7a.9414dfb945b14d90862a3ad55a222dc9"},
  #   {:uid=>"280744530", :token=>"280744530.c2a4a7a.241c1f8a204944a3b960e2978f175555"},
  #   {:uid=>"1545241593", :token=>"1545241593.c2a4a7a.bd9e4ebf8768472fb6b3cdfd4b0207fe"},
  #   {:uid=>"406563180", :token=>"406563180.c2a4a7a.3281b25d10544626b02695774b3ecdbf"},
  #   {:uid=>"2547142765", :token=>"2547142765.c2a4a7a.d8a3d4a079cb4c7088971af25c5fa5f8"},
  #   {:uid=>"3139135639", :token=>"3139135639.c2a4a7a.0eca0ee3c3e943d79f10a07c00a03372"},
  #   {:uid=>"226543951", :token=>"226543951.c2a4a7a.a52716f3cefe46149bdf928f9a776701"},
  #   {:uid=>"285272985", :token=>"285272985.c2a4a7a.87ed435f545d47dcb0fa4d18ba1868bd"},
  #   {:uid=>"4776818546", :token=>"4776818546.c2a4a7a.d1754c0c04d5403aa830e0bc8873352c"},
  #   {:uid=>"314633406", :token=>"314633406.c2a4a7a.15dadf11f5854464bbcbc53f0aa34ae0"},
  #   {:uid=>"1163534121", :token=>"1163534121.c2a4a7a.0bd191d085f442f6bc1a1b06fc25972a"},
  #   {:uid=>"1249529823", :token=>"1249529823.c2a4a7a.45b5321d87744224a7e3780d6d6a55aa"},
  #   {:uid=>"647200983", :token=>"647200983.c2a4a7a.856dbed39e33443c92d3ae764ec847d4"},
  #   {:uid=>"239891730", :token=>"239891730.c2a4a7a.cb3e3641714543458539fb9fedaffe96"},
  #   {:uid=>"427716113", :token=>"427716113.c2a4a7a.304c7fcaff2f4038a192aa623f8be69e"},
  #   {:uid=>"1520259058", :token=>"1520259058.c2a4a7a.2d7df7e9aef842c197c86bce4b14d992"},
  #   {:uid=>"310401349", :token=>"310401349.c2a4a7a.277e4bec4974442581669d3a2278d1a8"},
  #   {:uid=>"1171370737", :token=>"1171370737.c2a4a7a.98dae85c9ebf4df3b18d084a5cc8e878"},
  #   {:uid=>"2928354069", :token=>"2928354069.c2a4a7a.64763af23b1946f1a09a253a5af59279"},
  #   {:uid=>"797445158", :token=>"797445158.c2a4a7a.679c0c81aadf4676a19290b4be1b673d"},
  #   {:uid=>"1838235055", :token=>"1838235055.c2a4a7a.7dbbd1f42ae649c284dc0b0114671d55"},
  #   {:uid=>"3165919310", :token=>"3165919310.c2a4a7a.7418f2dd63a343efa39aa9b376cb6f5e"},
  #   {:uid=>"255519994", :token=>"255519994.c2a4a7a.55bab74cf11943e1afbbb94758364464"},
  #   {:uid=>"1181865468", :token=>"1181865468.c2a4a7a.ec4cf88c9eb649d781244a4203400a6a"},
  #   {:uid=>"2292774062", :token=>"2292774062.c2a4a7a.3198d81b5c054c16baaa87fa659b8f0a"},
  #   {:uid=>"2097107636", :token=>"2097107636.c2a4a7a.781a12c5891e47c682adf76414f4f74c"},
  #   {:uid=>"2125005696", :token=>"2125005696.c2a4a7a.6b146fc8b75f4abf83351c0933a1197a"},
  #   {:uid=>"1815206514", :token=>"1815206514.c2a4a7a.34ed07f92dfe4ccbb62de712500e9239"},
  #   {:uid=>"245729897", :token=>"245729897.c2a4a7a.04849db2da154b4991e7e02629f328af"},
  #   {:uid=>"203809819", :token=>"203809819.c2a4a7a.236977002e8742be82cfcd27c0ff8798"},
  #   {:uid=>"1690122815", :token=>"1690122815.c2a4a7a.fb1d982c1b82489a8ffad1430f936a9c"},
  #   {:uid=>"287808112", :token=>"287808112.c2a4a7a.473c3b8e47434a1fb5ee98a1cf994a84"},
  #   {:uid=>"217401513", :token=>"217401513.c2a4a7a.7de1aa8d158a4456ab9abfb7d07f6a3d"},
  #   {:uid=>"1428204501", :token=>"1428204501.c2a4a7a.a967378d45af4e0791cf557442d05457"},
  #   {:uid=>"2355695003", :token=>"2355695003.c2a4a7a.5a121e0c15d5463e9e3586503faddf91"},
  #   {:uid=>"5642122650", :token=>"5642122650.c2a4a7a.e0f4b14f75e44686879d6240fc1f938f"},
  #   {:uid=>"564558951", :token=>"564558951.c2a4a7a.d713fe09771744c08fd469a3cd75c9fb"},
  #   {:uid=>"23123687", :token=>"23123687.c2a4a7a.bcd274161d0342fcb8dc805e2806d934"},
  #   {:uid=>"298349716", :token=>"298349716.c2a4a7a.797e4d60dc6444d9bab7966d861913b7"},
  #   {:uid=>"972377885", :token=>"972377885.c2a4a7a.a09fb47f91b04cbfad384f4467dcec5c"},
  #   {:uid=>"1654327988", :token=>"1654327988.c2a4a7a.5ca1afe4c3c848028b026f84b84c15a5"},
  #   {:uid=>"1556567964", :token=>"1556567964.c2a4a7a.4f17ff0e2c52460c95575ec585658b51"},
  #   {:uid=>"552430001", :token=>"552430001.c2a4a7a.d53c3afff0e946a493941c278ab9fcc5"},
  #   {:uid=>"196521912", :token=>"196521912.c2a4a7a.b59c0dc280484c7c86b0799a473a36a9"},
  #   {:uid=>"948669186", :token=>"948669186.c2a4a7a.5ba98f9b624946ec9428e39199a08fa5"},
  #   {:uid=>"452311057", :token=>"452311057.c2a4a7a.cddc771c277c405a9b31bbde639a3ff8"},
  #   {:uid=>"3879291995", :token=>"3879291995.c2a4a7a.02bd72c1e4e04785aef363be1f7c5d40"},
  #   {:uid=>"1260514177", :token=>"1260514177.c2a4a7a.de741a90ac88402dbc00113300a41f7b"},
  #   {:uid=>"471994166", :token=>"471994166.c2a4a7a.63b736a53e7443958a3650e09556342c"},
  #   {:uid=>"3013371884", :token=>"3013371884.c2a4a7a.75f1908662df4bebaa3ef8114d0d0451"},
  #   {:uid=>"1746399184", :token=>"1746399184.c2a4a7a.9dff8af0cd2f4d7084ee653afab79d88"},
  #   {:uid=>"144853208", :token=>"144853208.c2a4a7a.61e96e63656d434cb10d65d36e4c1cde"},
  #   {:uid=>"1517665346", :token=>"1517665346.c2a4a7a.f8c53ac800704be1a022628df22224d5"},
  #   {:uid=>"1105391173", :token=>"1105391173.c2a4a7a.223ee5877310458291bc0fb9b45569cd"},
  #   {:uid=>"1618189018", :token=>"1618189018.c2a4a7a.e6f5e29a75234b49b553f2c1d2a14094"},
  #   {:uid=>"764381300", :token=>"764381300.c2a4a7a.2d09c490e93948d3b4854194c888a794"}]
  # end
end
