ActiveAdmin.register ConversationReplica do
  menu label: "Список реплик", parent: "Данные"
  permit_params :timing_in_seconds, :content, :tag_cloud, :talker_id
end
