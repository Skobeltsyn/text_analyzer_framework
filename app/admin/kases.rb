ActiveAdmin.register Kase do

  menu label: "Кейсы", parent: "Данные"

  permit_params :title, :commentary, :for_learning, :for_testing, :dataset_id, conversation_replicas_attributes: [
    :id, :_delete, :_destroy, :content, :tag_cloud, :talker_id, :timing_in_seconds,
    paramater_desired_values_attributes: [
      :id, :_delete, :_destroy, :value, :normalized_value, :commentary, :conversation_replica_id, :parameter_name
    ]
  ]

  form do |f|
    f.actions
    f.inputs do
      f.input :dataset
    end
    f.inputs do
      f.input :title, input_html: {rows: 2}
      f.input :commentary, input_html: {rows: 2}
      f.input :for_learning
      f.input :for_testing
    end

    f.has_many :conversation_replicas, allow_destroy: true, new_record: true do |_replica|
      _replica.input :timing_in_seconds
      _replica.input :content, input_html: {rows: 2}
      _replica.input :tag_cloud, input_html: {rows: 2}
      _replica.input :talker_id

      _replica.has_many :paramater_desired_values, allow_destroy: true, new_record: true do |desired_value|
        desired_value.input :parameter_name
        desired_value.input :value, input_html: {rows: 2}
        desired_value.input :normalized_value
        desired_value.input :commentary, input_html: {rows: 1}
      end
    end
  end

end
