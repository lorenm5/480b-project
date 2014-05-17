︠5345e04f-d34b-4389-a21e-4be975847dfe︠
@interact
def _(m = input_grid(1, 2, default=3, label='Matrix size', width=2)):
      v = m[0]
      print v[0]+v[1]
︡54b08b04-a874-4df1-bd27-f930104d9bff︡{"interact":{"style":"None","flicker":false,"layout":[[["m",12,null]],[["",12,null]]],"id":"012d6f0a-452a-4eec-a3de-824908c574b6","controls":[{"control_type":"input-grid","ncols":2,"default":[["3","3"]],"label":"Matrix size","nrows":1,"width":2,"var":"m"}]}}︡
︠50bbd845-214a-4720-9a5b-065213be5c7b︠
echelon = checkbox(False, lable='reduced row Echelon form')
︠a7de1396-c938-4c5a-bd63-1ab32a109e44︠
@interact
def __(Start = text_control("What would you like to do?"), Lin = checkbox(False, label='Linear Algebra')):
    if Lin == True:
        @interact
        def __(Linear_Algebra = text_control("What would you like to do?"), solve_right = checkbox(False, label='Solve right')):
            if solve_right == True:
                @interact
                def __(A = matrix(QQ, 3, 3, range(9)), v = matrix(QQ, 3, 1, range(3))):
                    try:
                        x = A\v
                        html('$$ %s %s = %s$$' %(latex(A), latex(x), latex(v)))
                    except:
                        html('no solution to $$ %s x = %s$$' %(latex(A), latex(v)))
            else:
                print "please make a selection"
    else:
        print false
︡0abfbd7d-92cb-4e8b-9e50-492fb20eb75d︡{"interact":{"style":"None","flicker":false,"layout":[[["Start",12,null]],[["Lin",12,null]],[["",12,null]]],"id":"7ee6eea7-9d9e-4759-bb2c-d1e6e0d6f5fe","controls":[{"default":"What would you like to do.","var":"Start","classes":null,"control_type":"text","label":"Start"},{"default":false,"var":"Lin","readonly":false,"control_type":"checkbox","label":"Linear Algebra"}]}}︡
︠cf230676-d99a-4862-821f-46e4a1c8cad5︠
                @interact
                def __(m=(input_grid(1, 2, default=3, label='Matrix size', width=2))
︠3cb5e3f6-beb1-48aa-a299-47fe99db0f2d︠
@interact
def __(Start = text_control("What would you like to do?"), Selections = selector(['Linear Algebra','Integrate','Differentiate',                             'Trig','Plot', 'nothing'], default='nothing', nrows=2, ncols=3,label = "Sections",buttons=False)):
    if Selections == 'Linear Algebra':
        @interact
        def __(Linear_Algebra = text_control("What would you like to do?"), solve_right = checkbox(False, label='Solve right')):
            if solve_right == True:
                @interact
                def __(Enter_matrix = matrix(QQ, 3, 3, range(9)), Enter_vector = matrix(QQ, 3, 1, range(3))):
                    try:
                        x = Enter_matrix\Enter_vector
                        html('$$ %s %s = %s$$' %(latex(Enter_matrix), latex(x), latex(Enter_vector)))
                    except:
                        html('no solution to $$ %s x = %s$$' %(latex(Enter_matrix), latex(Enter_vector)))
            else:
                print "please make a selection"
    else:
        print "please make a selection"
︡97bf1582-2e66-4241-b013-464b8094209e︡{"interact":{"style":"None","flicker":false,"layout":[[["Start",12,null]],[["Selections",12,null]],[["",12,null]]],"id":"63481478-2dbb-42b1-9846-52ab60d6716a","controls":[{"default":"What would you like to do?","var":"Start","classes":null,"control_type":"text","label":"Start"},{"buttons":false,"control_type":"selector","ncols":3,"button_classes":null,"default":5,"lbls":["Linear Algebra","Integrate","Differentiate","Trig","Plot","nothing"],"label":"Sections","nrows":2,"width":null,"var":"Selections"}]}}︡
︠b7ea2db1-c402-4a30-a1fa-24778728de67︠
@interact
def _(a=input_box(sin(x), 'Box for text'),ColorBox = Color('red'), choices=(2..20),u2 = slider(0, 50, step_size=.5, default=None, label='Slider'), u4 = checkbox(default=True, label='function 1'),u5 = checkbox(default=False, label='function 2'),u6 = input_grid(2, 3, default=1, label='Input Grid', width=2),u8 = text_control('Put text where you want'),u=color_selector(default=(.5,.7,.5), label=None, widget='farbtastic', hide_box=False), Dualslider = range_slider(-3, 7, step_size=1, default=None, label=None),ButtonsSection = selector(['Circle','Parabola','Ellipse', 'Hyperbola','Point', 'lines'],default = 'Circle', label = "Section",buttons=False), possibility=[1..30],j = slider(-1,1,1/100,1/100),Sections = selector(['Circle','Parabola','Ellipse', 'Hyperbola','Point', 'lines'],default = 'Circle', nrows=2, ncols=3,label = "Section 2",buttons=True)):

    P = plot(a, xmin = -abs(Dualslider[0]), xmax= abs(Dualslider[0]), ymin =-abs(Dualslider[1]),ymax=abs(Dualslider[1]), rgbcolor=ColorBox)
    Q = plot(x^2, xmin = -1, xmax= 1, rgbcolor=u)
    print Dualslider[1]
    if Sections == 'Hyperbola' and Dualslider[1] == 1:
        print "That's right!"

    show(P+Q)
︡0e40a06d-2899-4356-b185-e691a4dcacbe︡{"interact":{"style":"None","flicker":false,"layout":[[["a",12,null]],[["ColorBox",12,null]],[["choices",12,null]],[["u2",12,null]],[["u4",12,null]],[["u5",12,null]],[["u6",12,null]],[["u8",12,null]],[["u",12,null]],[["Dualslider",12,null]],[["ButtonsSection",12,null]],[["possibility",12,null]],[["j",12,null]],[["Sections",12,null]],[["",12,null]]],"id":"f6073f61-dd1b-42c3-a314-5c49265ad6df","controls":[{"control_type":"input-box","default":"sin(x)","label":"Box for text","nrows":1,"width":null,"readonly":false,"submit_button":null,"var":"a","type":null},{"widget":null,"control_type":"color-selector","hide_box":false,"Color":"<class 'sage.plot.colors.Color'>","label":"ColorBox","default":"#ff0000","readonly":false,"var":"ColorBox"},{"control_type":"slider","default":0,"var":"choices","width":null,"vals":["2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20"],"animate":true,"label":"choices","display_value":true},{"control_type":"slider","default":0,"var":"u2","width":null,"vals":["0.000000000000000","0.500000000000000","1.00000000000000","1.50000000000000","2.00000000000000","2.50000000000000","3.00000000000000","3.50000000000000","4.00000000000000","4.50000000000000","5.00000000000000","5.50000000000000","6.00000000000000","6.50000000000000","7.00000000000000","7.50000000000000","8.00000000000000","8.50000000000000","9.00000000000000","9.50000000000000","10.0000000000000","10.5000000000000","11.0000000000000","11.5000000000000","12.0000000000000","12.5000000000000","13.0000000000000","13.5000000000000","14.0000000000000","14.5000000000000","15.0000000000000","15.5000000000000","16.0000000000000","16.5000000000000","17.0000000000000","17.5000000000000","18.0000000000000","18.5000000000000","19.0000000000000","19.5000000000000","20.0000000000000","20.5000000000000","21.0000000000000","21.5000000000000","22.0000000000000","22.5000000000000","23.0000000000000","23.5000000000000","24.0000000000000","24.5000000000000","25.0000000000000","25.5000000000000","26.0000000000000","26.5000000000000","27.0000000000000","27.5000000000000","28.0000000000000","28.5000000000000","29.0000000000000","29.5000000000000","30.0000000000000","30.5000000000000","31.0000000000000","31.5000000000000","32.0000000000000","32.5000000000000","33.0000000000000","33.5000000000000","34.0000000000000","34.5000000000000","35.0000000000000","35.5000000000000","36.0000000000000","36.5000000000000","37.0000000000000","37.5000000000000","38.0000000000000","38.5000000000000","39.0000000000000","39.5000000000000","40.0000000000000","40.5000000000000","41.0000000000000","41.5000000000000","42.0000000000000","42.5000000000000","43.0000000000000","43.5000000000000","44.0000000000000","44.5000000000000","45.0000000000000","45.5000000000000","46.0000000000000","46.5000000000000","47.0000000000000","47.5000000000000","48.0000000000000","48.5000000000000","49.0000000000000","49.5000000000000","50.0000000000000"],"animate":true,"label":"Slider","display_value":true},{"default":true,"var":"u4","readonly":false,"control_type":"checkbox","label":"function 1"},{"default":false,"var":"u5","readonly":false,"control_type":"checkbox","label":"function 2"},{"control_type":"input-grid","ncols":3,"default":[["1","1","1"],["1","1","1"]],"label":"Input Grid","nrows":2,"width":2,"var":"u6"},{"default":"Put text where you want","var":"u8","classes":null,"control_type":"text","label":"u8"},{"widget":"farbtastic","control_type":"color-selector","hide_box":false,"Color":"<class 'sage.plot.colors.Color'>","label":"u","default":"#7fb27f","readonly":false,"var":"u"},{"control_type":"range-slider","default":[3,10],"var":"Dualslider","width":null,"vals":["-3","-2","-1","0","1","2","3","4","5","6","7"],"animate":true,"label":"Dualslider","display_value":true},{"buttons":false,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["Circle","Parabola","Ellipse","Hyperbola","Point","lines"],"label":"Section","nrows":null,"width":null,"var":"ButtonsSection"},{"buttons":false,"control_type":"selector","ncols":null,"button_classes":null,"default":0,"lbls":["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30"],"label":"possibility","nrows":null,"width":null,"var":"possibility"},{"control_type":"slider","default":101,"var":"j","width":null,"vals":["-1","-99/100","-49/50","-97/100","-24/25","-19/20","-47/50","-93/100","-23/25","-91/100","-9/10","-89/100","-22/25","-87/100","-43/50","-17/20","-21/25","-83/100","-41/50","-81/100","-4/5","-79/100","-39/50","-77/100","-19/25","-3/4","-37/50","-73/100","-18/25","-71/100","-7/10","-69/100","-17/25","-67/100","-33/50","-13/20","-16/25","-63/100","-31/50","-61/100","-3/5","-59/100","-29/50","-57/100","-14/25","-11/20","-27/50","-53/100","-13/25","-51/100","-1/2","-49/100","-12/25","-47/100","-23/50","-9/20","-11/25","-43/100","-21/50","-41/100","-2/5","-39/100","-19/50","-37/100","-9/25","-7/20","-17/50","-33/100","-8/25","-31/100","-3/10","-29/100","-7/25","-27/100","-13/50","-1/4","-6/25","-23/100","-11/50","-21/100","-1/5","-19/100","-9/50","-17/100","-4/25","-3/20","-7/50","-13/100","-3/25","-11/100","-1/10","-9/100","-2/25","-7/100","-3/50","-1/20","-1/25","-3/100","-1/50","-1/100","0","1/100","1/50","3/100","1/25","1/20","3/50","7/100","2/25","9/100","1/10","11/100","3/25","13/100","7/50","3/20","4/25","17/100","9/50","19/100","1/5","21/100","11/50","23/100","6/25","1/4","13/50","27/100","7/25","29/100","3/10","31/100","8/25","33/100","17/50","7/20","9/25","37/100","19/50","39/100","2/5","41/100","21/50","43/100","11/25","9/20","23/50","47/100","12/25","49/100","1/2","51/100","13/25","53/100","27/50","11/20","14/25","57/100","29/50","59/100","3/5","61/100","31/50","63/100","16/25","13/20","33/50","67/100","17/25","69/100","7/10","71/100","18/25","73/100","37/50","3/4","19/25","77/100","39/50","79/100","4/5","81/100","41/50","83/100","21/25","17/20","43/50","87/100","22/25","89/100","9/10","91/100","23/25","93/100","47/50","19/20","24/25","97/100","49/50","99/100","1"],"animate":true,"label":"j","display_value":true},{"buttons":true,"control_type":"selector","ncols":3,"button_classes":null,"default":0,"lbls":["Circle","Parabola","Ellipse","Hyperbola","Point","lines"],"label":"Section 2","nrows":2,"width":null,"var":"Sections"}]}}︡
︠441028ce-2ede-4288-805d-0e740d2b8c92︠









