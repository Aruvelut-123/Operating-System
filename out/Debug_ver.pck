GDPC                                                                                         P   res://.godot/exported/133200997/export-840019a1f8132d4fff10d13b2acd08c4-bios.scn�      o       �+=�O�a���_Q5    T   res://.godot/exported/133200997/export-b7fd66d2d92b3bfd32f9accd947d566b-booting.scn              �B���A�*2u���d)�        res://.godot/extension_list.cfg @%      5       q�Y��C�)�$    ,   res://.godot/global_script_class_cache.cfg  �              ��Р�8���8~$}P�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex`      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  �$      g       z�b���N��wl��9��    4   res://addons/godot-git-plugin/git_plugin.gdextension        �      k��$f�0o�`r�b       res://icon.svg  !      �      C��=U���^Qu��U3       res://icon.svg.import   @      �       �0��\y���Ol��       res://project.binary�%      {      �ʴ������L��P�k�        res://scences/bios.tscn.remap          a       ՚ح������\o�{�        res://scences/booting.tscn.remap�       d       i��. ����@���Y       res://scripts/BIOS.gd          �       &��G4;ގ,Ǵ�5�       res://scripts/booting.gd            ����:�̅���       res://scripts/global.gd        7      �!%C��t4"=C��                [configuration]

entry_symbol = "git_plugin_init"
compatibility_minimum = "4.1.0"

[libraries]

macos.editor = "macos/libgit_plugin.macos.editor.universal.dylib"
windows.editor.x86_64 = "win64/libgit_plugin.windows.editor.x86_64.dll"
linux.editor.x86_64 = "linux/libgit_plugin.linux.editor.x86_64.so"
linux.editor.arm64 = "linux/libgit_plugin.linux.editor.arm64.so"
linux.editor.rv64 = ""
           RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://scripts/BIOS.gd ��������      local://PackedScene_giq5u          PackedScene          	         names "         BIOS    script    Node2D    	   variants                       node_count             nodes     	   ��������       ����                    conn_count              conns               node_paths              editable_instances              version             RSRC RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    content_margin_left    content_margin_top    content_margin_right    content_margin_bottom    script 	   _bundled       Script    res://scripts/booting.gd ��������      local://StyleBoxEmpty_niqx2 �         local://PackedScene_4j07e �         StyleBoxEmpty             PackedScene          	         names "         Booting    script    Node2D    Display    anchor_mode 	   Camera2D 
   BIOS Info    offset_right    offset_bottom $   theme_override_font_sizes/font_size    theme_override_styles/normal    text    Label    Memory Info    offset_left    offset_top    ERROR Info 
   Left Info    	   variants                            �D    ��C                   �   Award Modular BIOS v4.50G, An Energy Star Ally
Copyright (C) 1984-94, Award Software, Inc.

#401A0-0303

DX4-S CPU at 100MHz
Memory Test :            PC     dC     �C      0K OK      �C    ��C    ��C   &   Keyboard error or no keyboard present       @     D     �C    @"D   I   Press F1 to continue, DEL to enter SETUP
10/11/94-SIS-85C471-I406SV2G-00       node_count             nodes     `   ��������       ����                            ����                           ����               	      
                              ����                  	         	      
         
                     ����                     	      
                              ����                           	      
                      conn_count              conns               node_paths              editable_instances              version             RSRC   extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
   extends Node

var total_characters = 0
var text_speed = 1
var global = Global
var memory_size = 4096
var processed = false
var currect_memory = 0
var pre_text = "Award Modular BIOS v4.50G, An Energy Star Ally
Copyright (C) 1984-94, Award Software, Inc.

#401A0-0303

DX4-S CPU at 100MHz
Memory Test :      "

func _ready():
	$"BIOS Info".text = pre_text
	$"BIOS Info".visible = false
	$"ERROR Info".visible = false
	$"Left Info".visible = false
	$"Memory Info".visible = false

func _process(delta):
	if global.print_effect($"BIOS Info", text_speed):
		pass
	else:
		$"Memory Info".visible = true
		while currect_memory < memory_size and !processed:
			await get_tree().create_timer(0.5).timeout
			if currect_memory < memory_size:
				currect_memory = currect_memory + 1
			else:
				currect_memory = memory_size
			$"Memory Info".text = str(currect_memory) + "K OK"
		await get_tree().create_timer(0.5).timeout
		$"ERROR Info".visible = true
		await get_tree().create_timer(1).timeout
		$"Left Info".visible = true
		processed = true
    extends Node2D

var printing = false
var printed = false

func reset():
	printing = false
	printed = false

func print_effect(node, text_speed):
	if node.visible_characters != 0 and !printing and !printed:
		node.visible_characters = 0
		printing = true
		printed = false
	if !node.visible:
		node.visible = true
	var total_characters = node.text.length() 
	if node.visible_characters < total_characters:
		node.visible_characters += text_speed
		printing = true
		printed = false
		return true
	else:
		printing = false
		printed = true
		return false
	return false
         GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://bfkkliyhlfvq2"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                [remap]

path="res://.godot/exported/133200997/export-840019a1f8132d4fff10d13b2acd08c4-bios.scn"
               [remap]

path="res://.godot/exported/133200997/export-b7fd66d2d92b3bfd32f9accd947d566b-booting.scn"
            list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             .MA��*5   res://scences/bios.tscn0��f��	-   res://scences/booting.tscnG}� ȤH&   res://icon.svg         res://addons/godot-git-plugin/git_plugin.gdextension
           ECFG      application/config/name         Operating System   application/config/version         0.1    application/run/main_scene$         res://scences/booting.tscn     application/config/features$   "         4.2    Forward Plus        application/boot_splash/bg_color                    �?"   application/boot_splash/show_image             application/config/icon         res://icon.svg     autoload/Global          *res://scripts/global.gd   display/window/size/resizable          "   editor/version_control/plugin_name      	   GitPlugin   *   editor/version_control/autoload_on_startup              