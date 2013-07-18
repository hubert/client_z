module ClientZ
  class Product
    attr_accessor "id", "location", "short_url", "slug", "title", "price", "reviews_count", "transactions_count", "photos", "description", "seller"

    def initialize(options)
      options.each do |k, v|
        send("#{k}=", v) if respond_to?(k)
      end
    end

    def primary_photo_url
      photos.first['hammer_small']['url']
    end
  end
end
