#!/usr/bin/env ruby

puts "Hello, world!"

puts %Q<
                             ;\\
                            |' \\
         _                  ; : ;
        / `-.              /: : |
       |  ,-.`-.          ,': : |
       \\  :  `. `.       ,'-. : |
        \\ ;    ;  `-.__,'    `-.|
         \\ ;   ;  :::  ,::'`:.  `.
          \\ `-. :  `    :.    `.  \\
           \\   \\    ,   ;   ,:    (\\
            \\   :., :.    ,'o)): ` `-.
           ,/,' ;' ,::"'`.`---'   `.  `-._
         ,/  :  ; '"      `;'          ,--`.
        ;/   :; ;             ,:'     (   ,:)
          ,.,:.    ; ,:.,  ,-._ `.     \\""'/
          '::'     `:'`  ,'(  \\`._____.-'"'
             ;,   ;  `.  `. `._`-.  \\\\
             ;:.  ;:       `-._`-.\\  \\`.
              '`:. :        |' `. `\\  ) \\
-FuseCodeCamp-    ` ;:       |    `--\\__,'
                   '`      ,'
                        ,-'

>

phrase = "Hello, solar system!"
puts phrase

third_phrase = "Howdy, universe!"
third_phrase = "Hello, universe!"
puts third_phrase

second_phrase = "Hello," + " galaxy!"
puts second_phrase

############################################

def function_one(argument_one, argument_two)
  return argument_one + argument_two
end

puts function_one(2, 3)
puts function_one("Hello", "World")

