class ServiceSerializer

    def to_serialized_json
        options = {
            include: {
                users:{
                    only: [:first_name, :last_name]
                },
                categories: {
                    only: [:name]
                }
            },
            except: [:updated_at],
        }
        @service.to_json(options)

    end
   
  end