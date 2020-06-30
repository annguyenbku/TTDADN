<?php

use Illuminate\Database\Seeder;

class trackroute extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('trackroute')->insert([
            ['route_id' => 2,
            'device_id' => 3,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 2,
            'device_id' => 4,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 3,
            'device_id' => 5,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 3,
            'device_id' => 4,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 5,
            'device_id' => 2,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 2,
            'device_id' => 3,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 4,
            'device_id' => 4,
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['route_id' => 5,
            'device_id' => 3,
            'created_at' => NULL,
            'updated_at' => NULL
            ]
        ]);
    }
}
