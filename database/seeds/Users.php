<?php

use Illuminate\Database\Seeder;

class Users extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            ['username' => 'nguyenvana',
            'password' => bcrypt('123456'),
            'firstname' => 'Nguyễn',
            'lastname' => 'A',
            'birthday' =>  '1995-06-02',
            'address' => 'Sô 50 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh',
            'email' => 'nguyenvana@gmail.com',
            'phonenumber' => '0928234272',
            'idcard' => '206128539',
            'gender' => 'Nam',
            'api_token' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['username' => 'nguyenvanbbb',
            'password' => bcrypt('123456'),
            'firstname' => 'Nguyễn',
            'lastname' => 'BBB',
            'birthday' =>  '1995-08-05',
            'address' => 'Sô 50 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh',
            'email' => 'nguyenvanbbb@gmail.com',
            'phonenumber' => '0928235222',
            'idcard' => '206125229',
            'gender' => 'Nam',
            'api_token' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['username' => 'nguyenvanccc',
            'password' => bcrypt('123456'),
            'firstname' => 'Nguyễn',
            'lastname' => 'CCC',
            'birthday' =>  '1998-06-02',
            'address' => 'Sô 48 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh',
            'email' => 'nguyenvanccc@gmail.com',
            'phonenumber' => '09282522272',
            'idcard' => '2061124239',
            'gender' => 'Nam',
            'api_token' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['username' => 'tranthic',
            'password' => bcrypt('123456'),
            'firstname' => 'Trần',
            'lastname' => 'C',
            'birthday' =>  '2001-06-02',
            'address' => 'Sô 100 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh',
            'email' => 'tranthic@gmail.com',
            'phonenumber' => '0946234272',
            'idcard' => '206129339',
            'gender' => 'Nu',
            'api_token' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ],
            ['username' => 'lethic',
            'password' => bcrypt('123456'),
            'firstname' => 'Lê',
            'lastname' => 'C',
            'birthday' =>  '1975-06-02',
            'address' => 'Sô 200 đường Điện Biên Phủ Quận Thủ Đức Tp Hồ Chí Minh',
            'email' => 'lethic@gmail.com',
            'phonenumber' => '0928289272',
            'idcard' => '296128539',
            'gender' => 'Nu',
            'api_token' => str_random(10),
            'created_at' => NULL,
            'updated_at' => NULL
            ]
        ]);
    }
}
