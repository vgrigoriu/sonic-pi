# Welcome to Sonic Pi

# 60 -> middle C (C4)
# :[a-g][sb]?[1-9]?
# amp: aplitude, 1 = normal volume
# pan: stereo left (-1) - center (0) - right (1)

# ADSR: attack, decay, sustain, release
# attack_level, decay_level, sustain_level

use_synth :blade
play :C4, release:0.2, attack:0.2
sleep 0.4
play :D4, release:0.2, attack:0.2
sleep 0.4
play :E4, release:0.2
sleep 0.3
play :f4, release:0.2
sleep 0.3
play :g4, release:0.2
sleep 0.3
play :a4, release:0.2
sleep 0.3
play :b4, release:0.2
sleep 0.3
play :c5, release:0.2
# rest
play :r

live_loop :waltz do
  sample :drum_cymbal_closed
  sleep 0.4
  sample :drum_tom_mid_soft
  sleep 0.4
  sample :drum_tom_mid_soft
  sleep 0.4
end

live_loop :x do
  sample :elec_bell
  sleep 0.4
  sample :misc_crow
  sleep 0.4
  sample :elec_wood
  sleep 0.4
  sample :loop_amen, pan:-1, release:1
  sleep 0.877
  sample :loop_amen, pan:1, release:1
  sleep 1
end
