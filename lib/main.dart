import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Halaman Login',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sign up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, ),),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.settings))
          ],
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                      'data:image/jpeg;base64,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', // URL gambar dari internet
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 50),
                          FlutterLogo(
                            size: 200,
                          ),
                          SizedBox(height: 50,),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.only(bottom: 25.0, top: 25),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        decoration: const InputDecoration(
                                          icon: Icon(Icons.person),
                                          // hintText: 'What do people call you?',
                                          labelText: 'Email *',
                                        ),
                                        onSaved: (String? value) {
                                        },
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your email';
                                          }
                                          if (!value.contains('@')) {
                                            return 'Invalid email';
                                          }
                                          return null;
                                        },
                                      ),

                                      TextFormField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                          icon: Icon(Icons.lock),
                                          labelText: 'Password *',
                                        ),
                                        onSaved: (String? value) {
                                        },
                                        validator: (String? value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';
                                          }
                                          if (value.length < 8) {
                                            return 'Password too short';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 5,),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                              "Forgot password?",
                                              style: TextStyle(color: Colors.black54, backgroundColor: Colors.transparent,)
                                          )
                                      ),
                                      SizedBox(height: 20,),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(8)
                                          ),
                                          minimumSize: Size(MediaQuery.of(context).size.width, 50),
                                        ),
                                        child: Text(
                                          "Login", style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5,),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("Don't have an account?", style: TextStyle(color: Colors.black54)),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                              " Create",
                                              style: TextStyle(color: Colors.black, backgroundColor: Colors.transparent,)
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.network("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABUFBMVEX////qQzU0qFNChfT7vAUvfPPd5/07gfSFrPc1f/T7uQCxyPr/vQD7uAD61dPpOCfpLRjqPzDpNiUspk7pMyH8wgAho0foKRHpLxsUoUDqPS0fo0bu9/D2trL3wb763Nr/+u/pOTf93Zvy9v5OsWeDxZIzqkDzn5rtZFr98O/8zmdKivRVkPXA0/sYp1bc7uChvvm73sNht3av2Ljzp6Pwhn/sVEjzo57rSj3ylY/85uX+9vXxjYbsW1D2vbn946v8x0X+8db81Hr+6b7+7Mf7wCbQ3vz92Y9vvYJjl/VFrmCf0auQyp3vfHXucmn4ysf4uHXsUTHvbyn0kB74qhHtYS3ygiP2nxf8yErwczeQs/h1ova4zvqLtlnjuRe5tC2Erz9gq0muszF7rkKWsDlNqk3Ry3g9kMk6maE2onQ/jNo8lbQ4nolAieQ5nJZTobd2v72aAAAKn0lEQVR4nO2c63faRhqHZQXs2MEWukToAsZbG2OSOoSLsY3B3SRNQ8DG293ubjftdu/b7v3//7YSYIxkzWgumhnB4fnYc2rpOe8785uLiCStWbNmzZo1a9YkRK28t19qt6uXPtV2u7S/V65diX6rROjut89OLrS8ZRiapiiOh6IommYYVt7a6N9Wr/dqot+RmHLprFOwDMVRN0CojqJZBWVcvVs6zb3zE83SIG5BUcXIX5xdL41lrTS2LAVRbqGcWuHick/0y8fTPe97tcO0e7C0lLM70QowaqV+Hrt4IRxD66W1knfjvEapN5O0LtrpS5Krc9Uibc7HqJp1WxatFKB7VlAS05vi5E/SMyLL43xy5XtAtTr7otUmlMcFFn5TxwvxdeyO84nMLkDHvtiJ9arHrH5zx8JY4FqnbbD283GsqiC/vY7Bwc9HuxDSqmcFlgMwiJo/474EuHN4NOgDjsN5Vr3Nc/XzKZxx9Nvb4FvAKcpFl5dgleMIXEQtlLj4XZ3wmkIfk+fRqWVFRIfeo3SYx3+J/xQTQFUY76p6ggU9Ckw3HGNxQ/CBQpuZ31U/6W0uGdYlI8GakBSMosBmLHZRz3eZU2CzDu8aaRHMr7rguoJk1JI56k0ARhWsqWkRZFTBq4u0CDKqoHSSlhxkVEFpnI6VDDvBahrWoj6sWnS/INpsBqsKdsVvl6awqqC0kdg0qjqOok1RHOw1LqsKSuMkplHV0SzL6Nz2qu2ST7vau+0r3n9C92RWwbZFrecY+U6vFPFZ0FV5//LEQPtog1kFu7SzjGJt9PahZ0d75/34239mFZQ6VIPQsTaqKFvVWukEfkfOrILSpUbhp1i36C/WrTrgzQs7wTJFj2rKOebB5nXHinZk16IS+XpbU0mO3+8i7yPZVZC8RxWD9LjvWn00HhlWkHQeVQs0Z32Xoe8eGFZQOiHrUaNPdwXWDbQqwwpK10RZr1r059HnD3d3LCsoERVQ6yRxh1lWHfYVlM5JpplCL6GnT28omVbwimDPpFrXiT2/ZzEWlHr4WwrHSfKWvVRgK1jDn2acTrIfvFyz/bjkF9glVE6YvlDSHOzsfv0zPMGx6HfG4+1O5vkvcRSXTfBgN5PJPP8VuqKzXC0qSR92Mr7iNxuIjk5f9BvjMhH0+TWSorqRvl8OwPlibvj8NyiKBrevzZLifWbO89/GCxbEf2uOyZvdzIJibGwYor5QJufFTmaRmNhYumnUYzcTBB4b2rLNMovzzFwREhv5dPyoBYtvw4Kw2HBuRb8uPgfhJoXGxhL2aESTQmLD4PNRcrL8PFIwOjbUjui3JSC6SQGxwXYXzghAk04VQ7GhLtmWacoLiGE4Nhh95MkYmKDPQmwsZwnfgIfhrIwPsbGUo1D6LK6GD7GhLt22d0LkgiakOIsNI7njX57EC2buY0MT/a5ExA7DmaIXGw6rHwSwBZaGAcVvvraWMir8c1JUfif6Xcl4H282Y+cD8UMONxlzCHk42jD02X1DbPgsy5jvwM9GnGgmEAtKz7afsOUl+NnvkA133qbYMAt+dvyKZm74Ls2Gm8Bno0+luwcpNtw+BT4btL+PgFyQg+Ez4LORw2LnRZoNtz4Bn40+DD9LtSEwLiBnNCF2v0y14eegR6PHIc1Ew97wyRPQo79Ej0MKQQ6G26BHv0Meh+/TbZgFrUxR906ZzLcpNwRFPvKShioslsOQfOvEx/ArwKM/rIohcNmGbkgT+CINkRfeqTf8ntrwi5Qbgpbeq1NDkOHqjEN6w7TPpSBD9DykOKVZEsOUr2mAhiuzLgWmxcrsLYCJvzr7Q9C6dGX2+MCV96qc00COhFfkrA1iuCLnpeBTjFU58wafRK3KvQX4NHFV7p7AJ8Krcn8IPtVflTtgyM0Mp3t8gbdrfL7FEHlDij6Z5jK/JzfMbhGBbAi55UbeP+V+kO06qeHpUzLQDSEf1CBONbk/vJL1EakhIYdZZEXYn0Hyy/3xlSzLOi+1GaeowxcSFhLS96W5H/7mC8pug5fblE+oA3HrNezPxK9q/A6doDd5uU15idqjsKk0fiDmcn+dCcoUcw0J6MMQNpVKcVvEXOZPc0FZH3CSm4CeouCdxQTo7y28kFiEaxE/ogo++Qj/Q7BEzP35VcCQZxHRmxQ+0cDOanK5vwQFuRbxNXKTAo+h7gHt8+9DIlDEIy52Psg9Cl3RTAC06TwkAnDLxFP0BU3MMAS06WJIBKvIQ8/jc+R1d9wwlCKXNYGQCBpWOOhJ0lfoJYwdhlFtGgoJAZPNS4ytE8KfC7dpOCT49+n36CWEL7tnBEM/IiSChhxCEb2CMYvSGYG1aVRIBHFbrAWfYhjGZsWEhdOa6JDgOxQxphm0Jl2Ya4AhEWrUIlNDdD/I7W+InbiQCBkOWQp+h9GjSDOpz/SzE1hIhBQZboZfY/QoapPO1jUoQ/Aek9mEijMIkeJ+xtuduJAI4TJa22xiCcJP2QIc7L6PCwkuVTzEOx7fjl+Tzvm7juXnV5GB4iHGQbcPWhhOqdu4hrKZ+HSziSmIPM9MqGAX0QuNZHNxE/cGJ+aQLUQRv4iybia5usHY9M6I3fsGuTHxFWU7ucuMT9iC6FExA79NPdxmMp16+BH/khF8ew+g5ZIo6mYSRzenWbw5ZlJClH1TkCOiKso2dRmLTftHDiUkSoxpGV260Thydfn4J9xhiD0KfSokk42PqZO3akOePPX4HxhnMz6YE+kMQkEPd0jm2Bjej35d/idOp+Jl4RzSPvVf0B3in260ZHdh7B//C+MA6imRIEWfTupo3uCsAOoVN/S0438jL9u2MVakQSgEPXT7qIU2sdZvhvbjqdsc/getU7OQb4Tinkzep1NH0z4axVSy2KjoEXqT/91Fiw2CpJgzIsr9wFvqrtu8aUTWstgYDWTbhQTv8U8IioTTzIwmWe6HLU3blgeVUasxpdW6qTRl13bNuD+PEBs4G98okjCce3q4rmu6pqnriH84PjZoetSHdijSExMbODv7aBriFWGxQTGPzrmhnm1ogcQG3tEFiERmGyq82Iju1C3IPwqFA+FGKkmO/xtZRbqgWEAWr+hGxQbBthdAUbyhFzaPYiNLmYQBReGzjcfx/4KDcZt0RxGJ+FiUw7GxRbbrBSumoYqLsQH5acwyK+rH97GRVE4EFFGXkkyZxcbWS+rFWgTFFITGLDbYCHqKwzQo6vqPWUaCHs00DEYvNlj5eVRSkBrJX1UGaAlXZPXRwJx67MkDWxK8wgNRbNIco1Ki21y+S74R1qlmwlfpQOqCktHm+AOIgYAycurQexrc13DuEacOnTMAnMWzQbeZf6r7mPqQ36RKf3lOxgh255AgNLfKlBQrHFpVt29E+fnUWQ9H3R6IadAFxyZDR91ucv2tKgBmdfTqlwY/n3rFTn5eNe1KWvx8iiM50YlVd+WR6PH3iMbATmhnpZv2QFg+QCm2jugl/c8bEL/hEEJ9RCWZdr0pxdbAjf8GIdJOr0R/tZFC6qOm6dUSVVPXXVsetNI0daJQb1WObNuEeuq66bq2PhgtTe0eUW+MKs2haduu/62JPmX61YlnLx9VRo360sotUqzXG63WaHTjMxr53w7VV8NszZo1a9asWZMK/g9CIq5GTSozwQAAAABJRU5ErkJggg==", width: 50, height: 50,),

                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.network("data:image/png;base64,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", width: 50, height: 50,),
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: Image.network("data:image/png;base64,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", width: 50, height: 50,)
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),




              ],
            ),
          ),
        ),


      ),
    );
  }
}
