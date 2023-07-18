scenes = [{
            id: 1,
            description: "Вы оказываетесь на краю тёмного и страшного леса. Вам нужно пройти через него, но готовы ли вы рискнуть?"
          },
          {
            id: 2,
            description: "Обходной путь петляет, но все же уводит вас в чащу, а оттуда - на лесную опушку"
          },
          {
            id: 3,
            description: "Вы идете прямиком по тропинке и попадаете на лесную опушку. "
          },
      	  {
      	  	id: 4,
            description: "На опушке вы видите небольшой лесной домик. "
      	  },
      	  {
            id: 5,
            description: "В домике горит свет, но кажется, внутри никого. "
          },
      	  {
            id: 6,
            description: "И тут вы слышите жуткий волчий вой. Что же делать? "
          },
          {
            id: 7,
            description: "Крыльцо надежно вас укрывает, пока вой не стихает вдалеке. Вы в безопасности, продолжайте путь."
          },
          {
            id: 8,
            description: "Оказавшись в домике, вы скрылись от волков. Вы в безопасности, можете осмотреть домик "
          },
          {
            id: 9,
            description: "Вы убегаете куда глаза глядят через лес, пока не оказываетесь в том же месте откуда начали. "
          }]

scenes.each do |scene_params|
  Scene.create(scene_params)
end

actions = [{
             scene_id: 1,
             description: "Нет, пойду в обход",
             gained_stats: { "осторожность": 1 },
             target_scene_id: 2,
           },
           {
             scene_id: 1,
             description: "Да, пойду по лесной тропинке",
             gained_stats: { "храбрость": 1 },
             target_scene_id: 3,
           },
           {
             scene_id: 2,
             description: "Продолжить",
             target_scene_id: 4,
           },
           {
             scene_id: 3,
             description: "Продолжить",
             target_scene_id: 4,
           },
           {
             scene_id: 4,
             description: "Обойти вокруг и осмотреться",
             gained_stats: { "осторожность": 1 },
             target_scene_id: 5,
           },
           {
             scene_id: 4,
             description: "Подойти и постучать",
             gained_stats: { "храбрость": 1 },
             target_scene_id: 5,
           },
           {
             scene_id: 5,
             description: "Попытаться уйти",
             gained_stats: { "осторожность": 1 },
             target_scene_id: 6,
           },
           {
             scene_id: 5,
             description: "Позвать хозяев криком",
             gained_stats: { "храбрость": 1 },
             target_scene_id: 6,
           },
           {
             scene_id: 6,
             description: "Влезть в окно  укрыться в домике (Нужно 2 стата храбрости) ",
             required_stats: { "храбрость": 2 },
             target_scene_id: 8
           },
           {
             scene_id: 6,
             description: "Спрятаться под крыльцо (Нужно 2 стата осторожности) ",
             required_stats: { "осторожность": 2 },
             target_scene_id: 7
           },
           {
             scene_id: 6,
             description: "Бежать куда глаза глядят ",
             target_scene_id: 9
           }
			]

actions.each { |action_params| Action.create(action_params) }

