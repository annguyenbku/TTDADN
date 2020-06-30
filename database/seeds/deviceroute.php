<?php

use Illuminate\Database\Seeder;

class deviceroute extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('deviceroute')->insert([
            ['latitude' => 12.46434,
            'longitude' => 20.19244,
            'datetime' => '2020-06-19 14:43:02',
            'description' => 'Mo ta 1',
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['latitude' => 102.46434,
            'longitude' => 30.12344,
            'datetime' => '2015-07-20 20:43:02',
            'description' => 'Mo ta 2',
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['latitude' => 30.46434,
            'longitude' => 15.11234,
            'datetime' => '2018-05-07 07:15:02',
            'description' => 'Mo ta 3',
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['latitude' => 96.63434,
            'longitude' => 38.42351,
            'datetime' => '2020-07-07 15:45:50',
            'description' => 'Mo ta 4',
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['latitude' => 25.63128,
            'longitude' => 70.12459,
            'datetime' => '2019-06-20 08:25:15',
            'description' => 'Mo ta 5',
            'created_at' => NULL,
            'updated_at' => NULL
            ]
        ]);
    }
}
