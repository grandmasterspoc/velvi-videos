class S3Store
  def initialize(file)
    @file = file
    @s3 = Aws::S3::Resource.new
    @bucket = @s3.bucket('velvi-video-bucket')
  end

  def store
    @bucket.put_object({acl: "public-read", body: @file, key: filename})
    self
  end

  def url
    @obj.public_url.to_s
  end

  private

  def filename
    @filename || File.basename(@file)
  end
end
