<?php

use Illuminate\Database\Seeder;

class devices extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('devices')->insert([
            ['user_id' => 1,
            'name' => 'THIETBI1',
            'brand' => 'MODEL1',
            'modecode' => 'A147852',
            'color' =>  'red',
            'dateregisted' => '2020-05-07',
            'licensePlate' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['user_id' => 2,
            'name' => 'THIETBI2',
            'brand' => 'MODEL2',
            'modecode' => 'A1414252',
            'color' =>  'red',
            'dateregisted' => '2016-05-07',
            'licensePlate' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['user_id' => 3,
            'name' => 'THIETBI3',
            'brand' => 'MODEL3',
            'modecode' => 'BAA147852',
            'color' =>  'blue',
            'dateregisted' => '2015-01-06',
            'licensePlate' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['user_id' => 4,
            'name' => 'THIETBI4',
            'brand' => 'MODEL4',
            'modecode' => 'CC147852',
            'color' =>  'green',
            'dateregisted' => '2018-06-11',
            'licensePlate' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['user_id' => 5,
            'name' => 'THIETBI5',
            'brand' => 'MODEL5',
            'modecode' => 'RRR14752',
            'color' =>  'pink',
            'dateregisted' => '2019-06-10',
            'licensePlate' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ]
        ]);
    }
}
