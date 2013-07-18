module ClientZ
  class ProductSearcher
    class << self
      def search(search_params)
        search_params[:targets] ||= ['los-angeles']
        MultiJson.load(Typhoeus.get("https://zaarly.com/v2/search?#{fix_array_params(search_params)}").body)['items'].map do |item_attrs|
          ClientZ::Product.new(item_attrs)
        end
      end
      
      private

      def fix_array_params(search_params)
        search_params.to_a.map do |k, v|
          if v.is_a?(Array)
            v.map do |elt|
              "#{k}%5B%5D=#{elt}"
            end
          else
            "#{k}=#{v}"
          end
        end.join('&')
      end
    end
  end
end
