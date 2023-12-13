ActiveAdmin.register Dataset do

  menu label: "Датасеты", parent: "Данные"
  permit_params :title, :commentary

end
