module Controller
  module Diagrams
    extend self

    Query = Crecto::Repo::Query

    def all()
      Model::ConnDB.all(Model::Diagram)
    end

    def get_by_id(id : String)
      Model::ConnDB.all(Model::Diagram, Query.where(id: id))
    end

    def get_by_key(key : String)
      Model::ConnDB.all(Model::Diagram, Query.where(key: key))
    end

    def create(env)
      key     = env.params.url["key"]
      diagram = env.params.json["diagram"].as(String)
      puts "Inside POST Controller"
      puts key
      puts diagram
      
      data_record = Model::Diagram.new
      data_record.key     = key
      data_record.diagram = diagram
      changeset = Model::ConnDB.insert(data_record)

      diagram_id = changeset.instance.id

      {status: "OK",id: diagram_id, message: "Diagram : #{key} was created."}.to_json
    end

  end
end