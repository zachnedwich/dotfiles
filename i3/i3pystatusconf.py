from i3pystatus import Status
from i3pystatus.weather import weathercom

status = Status(logfile='$HOME/i3pystatus.log')


# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#
status.register("clock",
        format=" %I:%M %p",
        color='#C678DD',
        interval=1,)


status.register("clock",
        format="  %a %d-%m-%Y ",
        color='#61AEEE',
        interval=1,)


status.register(
        'weather',
        format='{condition} {current_temp}{temp_unit}[ {icon}][ H: {high_temp}][ L: {low_temp}][ {update_error}]',
        colorize=True,
        hints={'markup': 'pango'},
        backend=weathercom.Weathercom(
            location_code='ASXX0016:1:AS',
            units='metric',
            ),
        log_level=10,
        )


status.register("cpu_usage",
        on_leftclick="alacritty --title=htop -e 'htop'",
        format="  {usage}%",)


status.register("temp",
        format="{Package_id_0}°C \uE0C0{Core_0_bar}{Core_1_bar}{Core_2_bar}{Core_3_bar}",
        hints={"markup": "pango"},
        lm_sensors_enabled=True,
        dynamic_color=True)

status.register("network",
        interface="enp0s31f6",
        format_up="  {rx_tot_Mbytes}MB ({bytes_recv}kb)  {tx_tot_Mbytes}MB ({bytes_sent}kb)", format_down="{interface}: DOWN",)



status.register("mpd",
        host='localhost',
        port='6600',
        format="{status}{artist}/{title} {song_elapsed}/{song_length}",
        on_leftclick="switch_playpause",
        on_rightclick=["mpd_command", "stop"],
        on_middleclick=["mpd_command", "shuffle"],
        on_upscroll=["mpd_command", "next_song"],
        on_downscroll=["mpd_command", "previous_song"],
        status={
            "pause": " ",
            "play": " ",
            "stop": " ",
            },)

status.register("alsa",
        on_leftclick = ["switch_mute"],
        on_upscroll = "decrease_volume",
        on_downscroll = "increase_volume",
        format=" {volume}%",        )


status.run()

