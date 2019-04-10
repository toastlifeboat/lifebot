# Description:
#   Toast Curses
#   Source: http://the-toast.net/2014/05/13/powerful-modern-curses/
#
# Commands:
#   toast curse
#
# Author:
#   @kellbot

module.exports = (robot) ->

    curse = [
        'May they achieve just enough success to keep you from giving up and finding satisfaction elsewhere, but never enough success to truly relax.',
        'May the colleagues that they badmouth the most have nothing but kind things to say about them when they’re not around, leading everyone in the office to conclude that they are a fundamentally disagreeable person.',
        'May they be like Guy Fieri: may the things they love the most be considered ridiculous by the world at large.',
        'Whenever they want to watch either Working Girl or 9 To 5, may the other one always be the only one streaming on Netflix Instant.',
        'May their life’s passion be met with global indifference.',
        'May their incompetence never recognize itself as such.',
        'May they never quite understand why they never get the job they believed they were perfect for, but were in fact ludicrously underqualified for.',
        'May the fears about themselves that wake them in the middle of the night all be the truest things they ever think.',
        'May their social media presence be so off-putting that it causes their real-life friends to distance themselves from them.',
        'May the most substantive emotional support they can offer a grieving friend be the febrile sentiment “Sending good thoughts your way” in a Facebook comment.',
        'May everyone they lend books to return them unread or keep them forever.',
        'May they become the emotional burden you sometimes fear yourself to be.',
        'May they never be understood in the comments.',
        'May their Sperrys give them blisters.',
        'May their umbrellas never work correctly.',
        'May their browsers never remember their passwords.',
        'May they always think they might have left the oven on.',
        'May they always go over the data limit on their phone and never be able to figure out what app is the culprit.',
        'May the volume in one of their headphones always be slightly louder than the other.',
        'May their corks always crumble.',
        'May they never reach inbox zero',
        'May the soles of their feet always itch, especially when they are wearing shoes',
        'May they never find a working pen when one is most needed.',
        'May their favorite show always be cancelled mid-season',
        'May they constantly accidentally reply all to sensitive emails',
        'May they always wake up in a panic sweat',
        'May their videos always buffer but never load',
        'May they get a popcorn kernel shell stuck inexorably in their molars'
       
    ]

    robot.hear /toast curses/i, (res) ->  
        res.send res.random curse
