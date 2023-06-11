module Model
    class Diagram < Crecto::Model

        schema "diagrams" do # table name
            field :id, Int32, primary_key: true
            field :key, String
            field :diagram, String
        end

        validate_required [:key, :diagram]
    end
end