local M = {}

M.random_headers = function()
  math.randomseed(os.time())
  local headers = {
    {
      [[                ⢀⣀⣤⣤⣤⣶⣶⣶⣶⣶⣶⣤⣤⣤⣀⡀                ]],
      [[             ⣀⣤⣶⣿⠿⠟⠛⠉⠉⠉⠁⠈⠉⠉⠉⠛⠛⠿⣿⣷⣦⣀             ]],
      [[          ⢀⣤⣾⡿⠛⠉                ⠉⠛⢿⣷⣤⡀          ]],
      [[         ⣴⣿⡿⠃                      ⠙⠻⣿⣦         ]],
      [[ ⢀⣠⣤⣤⣤⣤⣤⣾⣿⣉⣀⡀                        ⠙⢻⣷⡄       ]],
      [[⣼⠋⠁   ⢠⣿⡟ ⠉⠉⠉⠛⠛⠶⠶⣤⣄⣀    ⣀⣀      ⢠⣤⣤⡄   ⢻⣿⣆      ]],
      [[⢻⡄   ⢰⣿⡟        ⢠⣿⣿⣿⠉⠛⠲⣾⣿⣿⣷    ⢀⣾⣿⣿⠁    ⢻⣿⡆     ]],
      [[ ⠹⣦⡀ ⣿⣿⠁        ⢸⣿⣿⡇   ⠻⣿⣿⠟⠳⠶⣤⣀⣸⣿⣿⠇      ⣿⣷     ]],
      [[   ⠙⢷⣿⡇         ⣸⣿⣿⠃          ⢸⣿⣿⢷⣤⡀     ⢸⣿⡆    ]],
      [[    ⢸⣿⠇         ⣿⣿⣿     ⣿⣿⣷  ⢠⣿⣿⡏ ⠈⠙⠳⢦⣄  ⠈⣿⡇    ]],
      [[    ⢸⣿⡆        ⢸⣿⣿⡇     ⣿⣿⣿ ⢀⣿⣿⡟      ⠈⠙⠷⣤⣿⡇    ]],
      [[    ⠘⣿⡇        ⣼⣿⣿⠁     ⣿⣿⣿ ⣼⣿⣿⠃         ⢸⣿⠷⣄⡀  ]],
      [[     ⣿⣿        ⣿⣿⡿      ⣿⣿⣿⢸⣿⣿⠃          ⣾⡿ ⠈⠻⣆ ]],
      [[     ⠸⣿⣧      ⢸⣿⣿⣇⣀⣀⣀⣀⣀⣀⣸⣿⣿⣿⣿⠇          ⣼⣿⠇   ⠘⣧]],
      [[      ⠹⣿⣧     ⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏          ⣼⣿⠏    ⣠⡿]],
      [[       ⠘⢿⣷⣄   ⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉         ⢠⣼⡿⠛⠛⠛⠛⠛⠛⠉ ]],
      [[         ⠻⣿⣦⣄                      ⣀⣴⣿⠟         ]],
      [[          ⠈⠛⢿⣶⣤⣀                ⣀⣤⣶⡿⠛⠁          ]],
      [[             ⠉⠻⢿⣿⣶⣤⣤⣀⣀⡀  ⢀⣀⣀⣠⣤⣶⣿⡿⠟⠋             ]],
      [[                ⠈⠉⠙⠛⠻⠿⠿⠿⠿⠿⠿⠟⠛⠋⠉⠁                ]],
    },
    {
      [[⠀                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⢀⣴⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢀⣴⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢻⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⢸⣷⡀⠹⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⢸⣿⣿⣄⠘⢿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⡆⢀⡤⠒⠒⠲⢦⡀⠀⠀⠀⢀⡤⠖⠒⠒⠢⣄⠀⠀⠀⠀⣠⠴⠒⠒⠲⢦⣄⠀⠸⣿⣿⡄⠀⠀⠀⠀⣸⣿⡿⠁⣿⣿⣿⠀⠀⣿⣿⣤⣾⣿⣿⣿⣦⢠⣶⣿⣿⣿⣷⣦⠀]],
      [[⢸⣿⣿⣿⣦⠈⢻⣿⣿⣿⣿⣷⡀⠀⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⡗⠁⠀⠀⠀⠀⠈⣿⠀⠀⣰⠏⠀⠀⠀⠀⠀⠈⢧⠀⢀⡾⠁⠀⠀⠀⠀⠀⠹⣧⠀⢻⣿⣷⠀⠀⠀⢠⣿⣿⠃⠀⣿⣿⣿⠀⠀⣿⣿⡟⠁⠀⠈⢻⣿⣿⠏⠀⠀⠘⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⡇⠀⢻⣿⣿⣿⣿⣿⣄⠀⠀⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⣿⠤⠤⠤⠤⠤⠤⠤⠼⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⣿⡆⠀⢿⣿⣇⠀⢀⣿⣿⠏⠀⠀⣿⣿⣿⠀⠀⣿⣿⡇⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⡇⠀⠀⠻⣿⣿⣿⣿⣿⣆⠀⢿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡆⠀⠀⠀⠀⠀⠀⠀⣾⡇⠀⠈⣿⣿⡄⣼⣿⡟⠀⠀⠀⣿⣿⣿⠀⠀⣿⣿⡇⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⡇⠀⠀⠀⠙⣿⣿⣿⣿⣿⣧⡀⠻⣿⣿⣿⡇⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⠹⣆⠀⠀⠀⠀⠀⠀⠀⠀⠘⣧⠀⠀⠀⠀⠀⠀⢠⡿⠀⠀⠀⠸⣿⣷⣿⡿⠁⠀⠀⠀⣿⣿⣿⠀⠀⣿⣿⡇⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣷⡄⠹⣿⣿⡇⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠙⠳⢤⣀⣀⡤⠴⠛⠀⠀⠈⠳⢤⣀⣀⣠⠴⠛⠀⠀⠀⠀⠀⠹⠿⠿⠃⠀⠀⠀⠀⠿⠿⠿⠀⠀⠿⠿⠇⠀⠀⠀⠸⠿⠿⠀⠀⠀⠀⠿⠿⠇]],
      [[⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣆⠘⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠹⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⡧⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠈⠻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                     ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⢀⣴⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣦⡀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⢀⣴⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣦⡀⠀⠀⠀⠀]],
      [[⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣦⡀⠀⠀]],
      [[⢀⣄⠘⢿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣦⡀]],
      [[⣿⣿⣦⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣧⡀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣷⡄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣆⠈⢿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠻⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠹⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣆⠘⢿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣦⠈⢻⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠻⣿⣿]],
      [[⠈⠻⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⣷⡄⠙⠁]],
      [[⠀⠀⠈⠻⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀]],
      [[⠀⠀⠀⠀⠈⠻⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⠟⠁⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠈⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠟⠁⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣠⣾⣿⣿⠛⠛⠛⣛⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣛⠛⠛⢻⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⣠⣾⣿⣿⠟⠁⢀⣴⣿⣿⣿⣿⠿⠛⠉⠉⠉⠀⠀⠀⠉⠉⠉⠛⢿⣿⣷⡄⣼⣿⣿⣿⣿⠉⠻⣿⣿⣷⣄⠀⠀⠀]],
      [[⠀⣠⣾⣿⣿⠟⠁⠀⣴⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⠀⠀⠈⠻⣿⣿⣷⣄⠀]],
      [[⢺⣿⣿⣿⠁⠀⠀⣼⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⠿⠿⠿⠿⠿⠿⠀⠀⠀⠀⠈⣻⣿⣿⡗]],
      [[⠀⠙⢿⣿⣷⣄⠀⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣤⣄⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⡿⠋⠀]],
      [[⠀⠀⠀⠻⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⠀⠀⠀⢀⣴⣿⡿⠋⠀⠀⠀]],
      [[⠀⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⣠⣿⣿⠟⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠙⣿⣿⣯⠛⠛⠿⠿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⢿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣷⣤⣶⣿⣿⣿⣷⣶⣤⡀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣤⣤⣴⣶⣾⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣟⠛⠿⠿⣿⣿⣿⣿⣿⡿⠿⢻⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣷⣄⠀⠀⠀⠀⠀⠀⢀⣴⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣧⡀⠀⠀⢀⣴⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣦⣴⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣴⣶⣶⣶⣿⣿⣿⣿⣿⣶⣶⣶⣦⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⢹⣿⣿⣶⣶⣆⠀⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡷⠀⣴⣶⣶⣿⣿⡏]],
      [[⠘⣿⣿⣿⣿⣿⠀⠸⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⠇⠀⣿⣿⣿⣿⣿⠃]],
      [[⠀⢿⣿⣄⡙⠻⣷⣦⣀⠙⠻⣿⣿⣿⣿⣦⣄⠀⣠⣴⣿⣿⣿⣿⠟⠋⣀⣴⣾⠟⢋⣠⣿⡿⠀]],
      [[⠀⢸⣿⡟⠿⣦⣌⠙⠿⣷⣤⡀⠙⠻⣿⣿⣿⣿⣿⣿⣿⠟⠋⢀⣤⣾⠿⠋⣡⣴⠿⢻⣿⡇⠀]],
      [[⠀⠀⣿⣿⣦⣌⠙⢿⣦⣌⠙⣿⣷⠀⢀⠙⠿⣿⠿⠋⡀⠀⣾⣿⠋⣡⣴⡿⠋⣡⣴⣿⣿⠀⠀]],
      [[⠀⠀⠘⢿⣿⣿⣿⣦⣌⠛⢿⣿⣿⡇⢸⣷⣤⣀⣤⣾⡇⢸⣿⣿⡿⠛⣡⣴⣿⣿⣿⡿⠃⠀⠀]],
      [[⠀⠀⠀⣄⠈⠻⢿⣿⣿⣷⣦⣸⣿⡇⠀⣿⣿⣿⣿⣿⠀⢸⣿⣇⣴⣾⣿⣿⡿⠟⠁⣠⠀⠀⠀]],
      [[⠀⠀⠀⢹⣿⣦⡀⠙⠛⠛⠛⠿⠿⠿⠀⢿⣿⣿⣿⡿⠀⠿⠿⠿⠛⠛⠛⠋⢠⣴⣿⡇⠀⠀⠀]],
      [[⠀⠀⠀⢸⣿⣿⣇⠀⠀⠀⠀⠀⠀⢀⠀⢸⣿⣿⣿⡇⠀⡀⠀⠀⠀⠀⠀⢀⣸⣿⣿⡇⠀⠀⠀]],
      [[⠀⠀⠀⢸⣿⣿⣿⣿⣦⠀⢠⣴⣾⣿⠀⢸⣿⣿⣿⡇⠀⣿⣷⣦⡄⠀⣴⣿⣿⣿⣿⡇⠀⠀⠀]],
      [[⠀⠀⠀⠸⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⢸⣿⣿⣿⡇⠀⣿⣿⣿⡇⠀⣿⣿⣿⣿⣿⠇⠀⠀⠀]],
      [[⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⢸⣿⣿⣿⡇⠀⣿⣿⣿⡇⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⢸⣿⣿⣿⠀⠈⠉⠉⠉⠁⠀⣿⣿⣿⡇⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠈⠻⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⣿⣿⣿⠟⠁⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠈⠻⢿⠀⢸⣿⣿⡟⠀⣀⣀⣀⣀⣀⠀⢻⣿⣿⡇⠀⣿⠟⠁⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠁⣸⣿⣿⣿⣿⣿⣇⠈⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠃⢠⣿⣿⣿⣿⣿⣿⣿⡄⠘⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣤⣴⣶⣶⣶⣶⡿⠿⠿⠿⠿⠿⠿⢿⣶⣶⣶⣶⣦⣤⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣴⡾⠿⠟⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠻⠿⢷⣦⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣾⠿⠛⠉⠁⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⢰⣆⠀⠀⠀⠀⣰⡄⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠈⠉⠛⠿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣀⣴⡿⠟⠋⠀⠀⢀⣀⣤⣶⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣦⣤⣤⣴⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣶⣤⣀⡀⠀⠀⠙⠻⢿⣦⣀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⢠⣾⡿⠋⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠙⢿⣷⡄⠀⠀⠀]],
      [[⠀⠀⣴⡿⠋⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⢀⣸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⡀⠀⠙⢿⣦⠀⠀]],
      [[⠀⣾⡟⠁⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣤⣄⡀⠀⢀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠈⢻⣷⠀]],
      [[⢸⣿⠁⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠈⣿⡇]],
      [[⣿⡏⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢹⣿]],
      [[⣿⣇⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣸⣿]],
      [[⢸⣿⡀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⢀⣿⡇]],
      [[⠀⢿⣧⡀⠀⠻⣿⣿⣿⣿⣿⣿⣿⡿⠛⠛⠛⠻⢿⣿⣿⣿⠿⠟⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠻⠿⢿⣿⣿⡿⠟⠛⠛⠛⢿⣿⣿⣿⣿⣿⣿⣿⠏⠀⢀⣼⡿⠀]],
      [[⠀⠀⠻⣷⣄⠀⠘⠿⣿⣿⣿⣿⡏⠀⠀⠀⠀⠀⠀⠙⠿⠁⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠈⠟⠉⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⡿⠃⠀⣠⣾⠟⠀⠀]],
      [[⠀⠀⠀⠘⢿⣷⣄⠀⠈⠛⠿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⡿⠟⠁⠀⣠⣾⡿⠃⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠉⠻⣷⣦⣄⠀⠈⠙⠓⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠚⠉⠁⠀⣠⣴⣾⠟⠉⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⢿⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣶⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠻⢷⣶⣦⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣴⣶⡾⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠛⠻⠿⠿⠿⠿⣷⣶⣶⣶⣶⣶⣶⣾⠿⠿⠿⠿⠟⠛⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⡀⠀]],
      [[⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⠀⢀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⢠⣧⣤⣤⣼⡄⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣤⣤⣤⣼⣿⣿⣿⣿⣧⣤⣤⣤⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠛⠛⠛⠛⠛⠛⠛⠛⠛⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⣀⣈⣉⣀⣀⣀⣀⠀⠀⠀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⢁⣠⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠛⠛⠛⠿⠿⢿⣷⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣠⣄⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⠁⢠⡄⠀⠀⠀⠐⠒⠂⠀⠀⠉⠙⠻⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠉⢁⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠳⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠛⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⡀⠀⠀⠀⠀⢀⣀⣀⡀⠀⠀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⡀]],
      [[⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⣰⣾⣿⣿⣿⣿⣿⣿⣶⡀⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⡇]],
      [[⢀⣀⡀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣰⡄⠀⠀⠀⠀⢸⣿⣿⣿⠋⠉⠙⢻⣿⣿⣷⠀⠀⣿⣿⣿⠋⠉⠉⢻⣿⣿⡇⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⡟⠛⠛⠛⠛⠛⠃]],
      [[⠚⠿⠃⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠉⠃⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⣼⣿⣿⡿⠀⠀⣿⣿⣿⠀⠀⠀⢸⣿⣿⡇⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⢿⣿⣿⣶⣶⣶⣦⣄⡀]],
      [[⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⣿⣿⣿⣶⣶⣶⣾⣿⣿⡇⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⠿⠿⣿⣿⣷]],
      [[⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⣄⡀⠀⠀⠀⠀⢸⣿⣿⣿⢿⣿⣿⣿⣆⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⣤⣤⣤⣤⣄⠀⣠⣤⣤⣤⣤⣤⣿⣿⣿]],
      [[⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠛⠷⠀⠀⠀⠀⢸⣿⣿⣿⠀⠙⢿⣿⣿⣷⣄⠀⠀⣿⣿⣿⠀⠀⠀⢸⣿⣿⡇⠀⢸⣿⣿⡇⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⣿⡿⠃]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣤⣀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣷⡄⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣄⡀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⡿⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠈⠻⢿⣿⣿⡿⠟⠁⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠈⠙⢻⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣧⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⠉⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣠⣤⣶⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⠟⣿⣿⣿⡟⠻⣿⣿⡿⠛⠛⠻⢿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⡇⠀⣿⣏⣠⣾⣿⣦⠀⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⠀⣿⣿⣿⣿⣿⣿⠀⣿⣿⣿⡇⠀⣿⡟⠋⣉⣉⣥⠀⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⠀⠿⠿⠿⠿⠿⣿⠀⠻⣿⡿⢃⠀⣿⡀⠸⣿⡿⠟⠀⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣶⣶⣶⣶⣶⣶⣿⣷⣦⣤⣴⣿⣶⣿⣷⣦⣤⣴⣾⣶⣼⣿⠟⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⢿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠹⣿⣿⣿⣿⣿⣿⣟⠛⠛⠛⠛⠛⠛⢷⡀⠀⠀⠀⢀⡾⠛⠛⠛⠛⠛⠛⣻⣿⣿⣿⣿⣿⣿⠏]],
      [[⠀⠙⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠈⢷⡀⠀⢀⡾⠁⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⠋⠀]],
      [[⠀⠀⠘⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⢻⣤⡟⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⠃⠀⠀]],
      [[⠀⠀⠀⠘⢿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠛⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀]],
      [[⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⡄⠀⢠⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣶⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣤⣶⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣀⣤⣶⣶⣶⣶⣶⣦⣤⣀⡀⠀⠉⣁⣠⣤⣶⣶⣶⣶⣶⣶⣦⣤⣀⠀⠀⠀⠀]],
      [[⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀]],
      [[⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀]],
      [[⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀]],
      [[⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀]],
      [[⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀]],
      [[⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀]],
      [[⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀]],
      [[⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀]],
      [[⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀]],
      [[⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠂]],
      [[⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀]],
      [[⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀]],
      [[⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠻⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠈⠙⠛⠻⠿⠛⠋⠁⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⢿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡿⠀⠀⠀⠀⢰⣶⣶⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⢀⣴⣦⡀⠈⠻⠿⢿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠀⠀⠀⠀⢠⣿⣿⣿⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⡆⠀⠀⠀⢹⣿⣿⣿⣿⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣶⣶⣶⣶⣶⣶⣶⣶⡆⠀⣶⣶⣶⣶⣶⠀⢰⣾⣿⣿⣿⣿⣿⣿⣿⡇]],
      [[⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣧⡀⠀⠀⠈⠻⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⠟⠛⠛⠻⣿⣿⣟⠋⠁⠈⠉⢻⣿⣿⣿⠀⠈⠉⣿⣿⣿⣿⠉⠉⠉⠁]],
      [[⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢰⣄⠀⠈⠛⠛⢿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⣿⣿⣿⡆⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀]],
      [[⢾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢸⣿⡇⠀⠀⠀⠀⣿⣿⣿⣿⡷⠀⠀⠀⠀⠀⠘⣿⣿⣿⣦⣤⣤⣴⣿⣿⡿⠁⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀]],
      [[⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⢸⣿⣿⣦⣄⣤⣼⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⢈⣿⣿⠿⢿⣿⠿⠿⠋⠁⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀]],
      [[⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⡿⠃⠀⠈⢻⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣯⣤⣤⣤⣄⣀⣀⡀⠀⠀⢀⣀⣼⣿⣿⣿⣀⡀⠀⢹⣿⣿⣿⣷⣶⣶⡇]],
      [[⠀⠀⠀⠀⠀⠻⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠘⠿⠿⠿⠿⠿⠿⠇⠀⠀⠙⠛⠿⠿⠛⠛⠉]],
      [[⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣶⣶⣶⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⡟⠁⠀⠉⠉⠉⠙⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢿⣿⣿⣶⣦⣤⣤⣶⣾⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠛⠛⠛⠛⠛⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣶⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⠿⣿⣿⣿⣄⠀⠀⢀⣴⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣤⣤⡄⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⠃⠀⠹⣿⣿⣿⣦⢀⣾⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⢀⣾⣿⣿⡿⠁⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⡟⠹⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⢻⣿⣿⣆⠀⠀⠀⣿⣿⣿⣿⠀⠀⠀⣶⣶⣶⠀⠀⠀⠀⠀⣶⣶⣶⠀⠀⠰⣶⣶⣦⡀⠀⠀⢀⣶⣶⣶⠆⠀⣶⣶⣾⣿⣿⣷⣶⣶⣦]],
      [[⠀⠀⠀⠀⢠⣾⣿⣿⡟⠁⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⠟⠀⠀⠘⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⢿⣿⣿⣧⠀⠀⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠙⣿⣿⣷⣄⣠⣿⣿⡿⠋⠀⠀⠿⠿⢿⣿⣿⣿⠿⠿⠿]],
      [[⠀⠀⠀⣰⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⠏⠀⠀⠀⠀⠈⢿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⢻⣿⣿⣧⠀⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠈⢿⣿⣿⣿⣿⡟⠁⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀]],
      [[⠀⠀⣴⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⢻⣿⣿⣧⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⣿⣿⣿⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀]],
      [[⠀⣼⣿⣿⣿⠃⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⣇⠀⠀⠀⣰⣿⣿⣿⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⢸⣿⣿⣧⠀⠀⠀]],
      [[⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⠀⠀⠀⠹⣿⣿⣿⣷⣶⣾⣿⣿⣿⣿⠀⠀⠀⣴⣿⣿⡿⠁⠈⢿⣿⣿⣆⠀⠀⠀⠀⠘⢿⣿⣿⣷⣶⣶]],
      [[⠘⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠋⠁⠀⠀⠀⠰⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠟⠁⠀⠀⠀⠀⠀⠿⠿⠿⠇⠀⠀⠀⠀⠀⠘⠿⠿⠿⠟⠀⠀⠀⠀⠉⠻⠿⠿⠿⠛⠁⠿⠿⠿⠀⠀⠼⠿⠿⠟⠀⠀⠀⠀⠻⠿⠿⠧⠀⠀⠀⠀⠀⠙⠻⠿⠿⠟]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀                                                       ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[⠀⠀⠀⠀⠀⢀⣴⣶⣿⣿⣷⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣄⠀⣶⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠞⠉⠉⠙⢿⣿⣿⣿⣷⣄⣀⣀⣠⠂⠀⠀⠀⠀⢀⣀⣿⣀⣀⠀⠀⢀⣀⣀⠀⣀⡀⠀⣉⡁⠀⣿⡇⠀⣀⠀⠀⢀⣀⠀⠀⢀⣀⡀⢈⣁⠀⢀⡀⢀⣀⣀⠀⠀⠀⠀⢀⣀⣀⠀⣿⡇⠀⠀⢀⣀⣀⡀⠀⠀⠀⣀⣀⡀⠀⠀⠀⣀⣀⣀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠿⢿⣿⣿⡿⠟⠃⠀⠀⠀⠀⠀⠘⠛⣿⠛⠛⠀⣼⡿⠛⠛⢷⣿⡇⠀⣿⡇⠀⣿⡇⠀⢿⡇⠀⣸⣿⡇⠀⢸⡟⠀⢸⣿⠀⢸⣷⠟⠛⠻⣷⠀⢀⣴⡿⠛⠛⢿⣿⡇⠀⣰⡿⠛⠛⢿⠧⠀⣼⡟⠛⠻⠃⠀⣾⡟⠛⠻⠇]],
      [[⠀⣠⣶⣾⣿⣿⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⠀⢸⣿⠀⠀⠀⠀⣿⡇⠀⣿⡇⠀⣿⡇⠀⠸⣷⣀⣿⠉⣿⠀⣿⠃⠀⢸⣿⠀⢸⡏⠀⠀⠀⣿⡇⢸⣿⠀⠀⠀⠀⣿⡇⢰⣿⠁⠀⠀⠀⠀⠀⠙⠿⣶⣦⣄⠀⠙⠿⣶⣦⡄]],
      [[⡸⠋⠉⠉⠻⣿⣿⣿⣿⣦⣀⣀⣀⡔⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣆⣀⠈⢿⣦⣀⣀⣴⣿⡇⠀⣿⡇⠀⣿⡇⠀⠀⢿⣿⡇⠀⢹⣿⡟⠀⠀⢸⣿⠀⢸⡇⠀⠀⠀⣿⡇⠈⢿⣦⣀⣀⣴⣿⡇⠀⢻⣧⣄⣀⣴⡦⠀⣴⣄⣀⣸⣿⠀⣴⣄⣀⣸⡿]],
      [[⠀⠀⠀⠀⠀⠘⠻⢿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠛⠀⠀⠙⠛⠛⠁⠛⠃⠀⠛⠃⠀⠙⠃⠀⠀⠈⠛⠀⠀⠈⠛⠁⠀⠀⠘⠋⠀⠘⠃⠀⠀⠀⠛⠃⠀⠀⠙⠛⠋⠁⠛⠁⠀⠀⠈⠛⠛⠋⠀⠀⠈⠛⠛⠋⠁⠀⠈⠛⠛⠋⠀]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
      [[                                                                                          ]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣤⣶⣶⣤⡉⠻⣿⠿⢋⣭⣶⣿⣿⣷⣦⡀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⡄⢠⣌⢩⣭⣿⣛⣛⡛⠿⠷⠄⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⣼⣿⣷⣌⠻⣿⣿⣿⣿⣿⡇⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⢰⣿⣿⣿⣿⣿⣦⡛⢿⣿⣿⡇⠀]],
      [[⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⢁⣾⣿⣿⣿⣿⣿⣿⣿⣦⣝⢻⡇⠀]],
      [[⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠘⣛⣋⣩⣭⣭⣭⣭⣤⣤⣤⡤⠀⠀]],
      [[⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⡐⣦⣙⠻⢿⣿⣿⣿⣿⣿⣿⢣⡆⠀]],
      [[⠀⠀⢀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⣠⣾⣿⣿⡇⢹⣿⣷⣦⣉⠻⢿⣿⣿⢣⣾⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣾⣿⣿⣿⣿⣿⡘⣿⣿⣿⣿⣷⣦⡉⢡⣿⣿⠀⠀]],
      [[⠀⢠⢸⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⣠⣾⣿⣿⣿⣿⣿⣿⣿⡇⢹⣿⣿⣿⣿⠟⣰⠈⣿⡟⠀⠀]],
      [[⠀⢸⡇⠙⠻⠿⠿⢛⣋⣉⣠⢀⢨⣛⡻⢿⣿⣿⣿⣿⣿⣿⣷⠘⣿⣿⡿⢋⣼⣿⡆⣿⡇⠀⠀]],
      [[⠀⢸⡟⠀⣶⣶⣿⣿⣿⣿⡇⣼⣏⢻⣿⣿⣶⣬⣭⣛⠻⠿⣿⡇⢹⠟⣡⣿⣿⣿⣧⢻⡇⠀⠀]],
      [[⠀⠘⡄⣷⠹⣿⣿⣿⣿⡿⢱⣿⣿⣏⢿⣿⣿⣿⣿⣿⣿⣿⣶⠄⣀⢾⣿⣿⣿⣿⣿⠸⡇⠀⠀]],
      [[⠀⢸⡇⣿⣧⢻⣿⣿⣿⡇⣾⣿⣿⣿⣎⢿⣿⣿⣿⣿⣿⢟⣵⣾⣿⣷⣌⠻⣿⣿⣿⡀⠇⠀⠀]],
      [[⠀⢸⡇⣿⣿⣆⢿⣿⡿⢸⣿⣿⣿⣿⣿⣎⢿⣿⠿⣫⣴⣿⣿⣿⣿⣿⣿⣿⣌⠻⣿⡇⠀⠀⠀]],
      [[⠀⠀⠁⣿⣿⣿⡌⣿⢃⣿⣿⣿⣿⣿⡿⠟⣪⣥⣬⣝⣛⣛⣛⣛⠿⠿⠿⠿⠿⠷⠮⠛⠀⠀⠀]],
      [[⠀⠀⠀⠈⠛⠿⠿⠈⠸⠿⠛⠋⠩⠑⠒⠛⠛⠛⠋⠉⠉⠉⠉⠉⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣶⣿⣿⣿⣿⣿⣶⣶⣦⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀]],
      [[⠀⠀⣤⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠿⠆⠀⠀]],
      [[⠀⣸⣿⣧⠀⠈⢿⣿⣿⣿⣿⡿⠋⠁⠀⣀⣀⣀⣀⣀⠀⠀⠀⢀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⠀]],
      [[⢠⣿⣿⣿⣧⡀⠈⢻⣿⣿⠏⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄]],
      [[⣸⣿⣿⣿⣿⣷⡀⠀⢻⡏⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣇]],
      [[⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⢹⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⣸⣿⣿⣿⣿⣿⣿⣿⣿⡏]],
      [[⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃]],
      [[⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠉⠉⠉⠉⠉⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⡏⠀]],
      [[⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣶⣶⡶⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠀⠀]],
      [[⠀⠀⠀⠙⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⠋⠀⠀⠀]],
      [[⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠁⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⣿⣿⣿⣿⣿⠟⠀⢠⣾⣿⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠏⠀⢠⣿⣿⠿⠿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠉⠉⠉⣿⣿⣿⣿⠟⠋⠉⠉⠉⠉⠻⢿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠃⠀⠀⢀⣀⣀⠀⠀⣈⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⠀⠀⠀⢿⣿⣿⣷⣾⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⡄⠀⠀⠀⠉⠛⠿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⣶⣄⡀⠀⠀⠀⠀⠙⢿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⠀⠀⠀⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠻⣿⣿⠏⠀⠀⠀⣿⣿⠟⠋⠈⠻⣿⣿⣿⡟⠀⠀⠀⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣤⣤⣤⣶⣿⣿⣿⣿⣿⣿⣷⣦⣤⣤⣤⣤⣶⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⣿⡿⠿⠿⠿⠇⣿⣿⠿⠿⠿⠇⢸⣿⠿⠿⠿⠇⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠿⠿⠿⠿⣿⡇⠸⠿⠿⠿⣿⡇⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⣿⣿⣶⣶⣶⡆⣶⣶⣶⣶⣿⡇⢰⣶⣶⣶⣿⡇⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶]],
      [[⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟]],
      [[⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⣟⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⠛⢻⣿⣿⣿⣿⡇]],
      [[⠘⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⠇]],
      [[⠀⣿⣿⣿⣿⣿⣤⣤⣤⣤⣤⣤⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣿⣿⣿⣿⣿⠀]],
      [[⠀⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠀⣀⣤⣶⣿⣿⣿⣿⣿⣿⣿⠀]],
      [[⠀⢻⣿⣿⣿⣿⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠛⠛⠛⠛⠛⢻⣿⣿⣿⣿⡿⠀]],
      [[⠀⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡇⠀]],
      [[⠀⢸⣿⣿⣿⣿⣧⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⣤⡄⠀⠀⠀⢸⣿⣿⣿⣿⡇⠀]],
      [[⠀⠈⣿⣿⣿⣿⣿⠛⠛⠛⢻⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⢸⣿⣿⣿⣿⠃⠀]],
      [[⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀]],
      [[⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠉⠙⠛⠛⠉⠉⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀]],
      [[⠀⠀⢻⣿⣿⣿⣿⣧⣄⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣿⣿⣿⣿⡿⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣤⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀]],
      [[⠀⠀⠀⠉⠛⠛⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠛⠉⠁⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠻⠿⢿⡿⠿⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⢰⣿⡇⠀⢸⣿⡇⣿⣿⣿⣿⣿⡇⣿⣿⣦⢀⣾⣿⡇⣾⣿⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⡇⠀⢸⣿⡇⠀⠀⣿⣿⢿⣿⢿⣿⡇⣿⣿⣀⣀⡀⠀⠀⠀]],
      [[⠀⠀⠸⠿⠇⠀⠸⠿⠇⠀⠸⠿⠇⠀⠀⠿⠿⠀⠋⠸⠿⠇⠿⠿⠿⠿⠇⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⡆]],
      [[⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
      [[⢸⣿⣿⣿⣿⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⣹⣿⣿⣿⣿⠁]],
      [[⠀⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀]],
      [[⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣶⣿⣿⣿⣿⣿⠀]],
      [[⠀⢿⣿⣿⣿⣿⠀⠀⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀]],
      [[⠀⢸⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡇⠀]],
      [[⠀⢸⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠇⠀]],
      [[⠀⠘⣿⣿⣿⣿⡿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣸⣿⣿⣿⣿⠀⠀]],
      [[⠀⠀⣿⣿⣿⣿⣷⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀]],
      [[⠀⠀⣿⣿⣿⣿⣿⠀⠀⠀⠀⠉⠛⠻⠿⠿⠛⠋⠉⠀⠀⠀⠀⣿⣿⣿⣿⣿⠀⠀]],
      [[⠀⠀⢿⣿⣿⣿⣿⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⣿⣿⣿⣿⡇⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣷⣶⣦⣤⣀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀]],
      [[⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀]],
      [[⠀⠀⠈⠙⠛⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠛⠉⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠻⠿⢿⡿⠿⠟⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[ ⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[ ⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⣀⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣠⡀⠀⠀⠀⠀]],
      [[⠀⣠⣴⣾⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⢀⣠⣶⣿⣿⣿⣶⣤⡀⠀⠀⠀⠀⢀⣤⣶⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢀⣤⣶⣿⣿⣿⣷⣦⣀⠀]],
      [[⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⡇⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⢸⣿⣿⣿⣿⡿⣿⣿⣿⣿⣷]],
      [[⣿⣿⣿⡏⠀⠀⠈⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⣿⣿⣿⣿⠁⠀⠈⢻⣿⣿⣿⠀⠀⢸⣿⣿⣿⢡⣴⡄⢹⣿⠿⠋]],
      [[⣿⣿⣿⡇⠀⠀⠀⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⣿⣿⣿⣿⣄⣀⣠⣾⣿⣿⣿⠀⠀⢸⣿⣿⣿⣄⡉⠁⠈⠀⠀⠀]],
      [[⣿⣿⠿⠃⠀⠀⠀⠻⢿⣿⡇⠀⠀⠻⢿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠻⢿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠀⠀⠸⢿⣿⣿⣿⣿⣷⣦⣀⠀⠀]],
      [[⠉⠁⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠈⠛⠿⣿⠟⠋⠁⠀⢀⣀⣀⠀⠀⠉⠛⢿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠈⠙⠿⣿⡿⠛⠉⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡤⠖⠋⠀⠈⠓⠦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠁⠀⢀⠀⣀⣤⣤⡀⠈⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⢸⠀⠧⣤⣀⣙⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⢸⠀⢦⣀⣀⣹⠂⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠦⣄⣸⠀⠀⠀⠁⢀⡤⠞⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠦⣄⡴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[ ⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⣴⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠸⠿⠿⣿⣿⠿⠿⠿⠿⠀⠀⣿⣿⣠⣼⠿⠿⣿⣧⢀⣤⡾⠿⢿⣿⣆⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠈⢻⣷⡀⠀⠀⠀⣼⡿⠃]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢈⣉⣉⣉⣉⣉⣉⣉⣉⡁⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⠋⠀⠀⠀⠘⣿⡿⠃⠀⠀⠀⢹⣿⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠻⣿⡄⢀⣼⡟⠁⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⢸⣿⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠹⣿⣿⠟⠀⠀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⢸⣿⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⣰⣿⣿⣦⠀⠀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⣿⠀⠀⠀⠀⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⢸⣿⠀⠀⢸⣿⣇⠀⠀⠀⠀⣠⣿⣿⠀⠀⠀⣴⡿⠁⠘⢿⣧⡀⠀]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠘⢿⣷⣶⣶⣶⠀⠀⣿⣿⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⢸⣿⠀⠀⠀⠻⣿⣶⣶⣶⡿⠋⣿⣿⠀⢀⣼⡿⠁⠀⠀⠈⢿⣷⡀]],
      [[⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠁⠀⠀⠉⠉⠀⠀⠀⠀⠀⠉⠁⠀⠀⠀⠀⠈⠉⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠉⠉⠀⠈⠉⠁⠀⠀⠀⠀⠀⠉⠁]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                        ⠀⠀⠀⠀⠀⠀⠀]],
    },
    {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣷⣶⣤⣀⡀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⢀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣴⣾⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠋⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠻⢿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠈⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⡿⠿⠛⠉⠁⠀⠀⠀⠀]],
    },
  }
  return headers[math.random(1, #headers)]
end

return M
