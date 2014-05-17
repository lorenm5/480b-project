︠f587cea7-570a-46a4-8bf4-aab133bcd478︠
def vectorDisplay(vec):
    displayString = "<"
    count = 1
    for i in vec:
        displayString += str(i)
        if count != len(vec):
            displayString += ", "
        count += 1
    displayString += ">"
    return displayString


def enter_a_matrix():
    p = []
    @interact
    def __(m = input_grid(1, 2, default=3, label='Matrix size: rows, columns. Click the green buton to evaluate', width=3)):
        v = m[0]
        @interact
        def __(q = input_grid(v[0], v[1], default=3, label='Matrix', width=2)):
            show(matrix(q))
            q.append(p)
            @interact
            def __(show_code_matrix = checkbox(False, label='How do I enter a matrix directly in a sage worksheet?')):
                   if show_code_matrix == True:
                       html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> <br> To create a matrix in sage, say matrix A, we type <br> <font color = 'green'>sage:</font color> A = matrix([[1,2,3],[3,2,1],[1,1,1]]) <br> To put it another way <br> <font color = 'green'>sage:</font color> A = matrix([[comma seperated list of row 1], [comma seperated list of row 2], . . . ,[comma seperated list of the last row]]) <br> Notice that the lists of rows are enclosed by a set of square braces in addition to the encloseing parentheses. <br> To see the matrix we just entered in human form, type <br> <font color = 'green'>sage:</font color> show(A)")
    return p



@interact
def __(Start = text_control("What would you like to do?"), Selections = selector(['Linear Algebra','Integrate','Differentiate',                             'Equations','Plot', 'nothing'], default='nothing', nrows=2, ncols=3,label = "Sections",buttons=False)):
    #interactive linear algebra section
    if Selections == 'Linear Algebra':
        @interact
        def __(Start = text_control("What would you like to do?"), Selections_la = selector(['Vectors','Matrix information','Matrix arithmatic', 'nothing'], default='nothing', nrows=1, ncols=5,label = "Sections",buttons=False)):

            if Selections_la == 'Matrix information':
                p = enter_a_matrix()
                print p
                @interact
                def __(Linear_Algebra = text_control("What would you like to do?"), solve_right =
                       checkbox(False, label='Solve right') , ker = checkbox(False, label='Kernel'), eigenvalue =
                       checkbox(False, label='Eigenvalues'), eigenvec = checkbox(False, label='Eigenvectors'), echelonForm = checkbox(False, label='Echelon row reduction')):

                            if solve_right == True:
                                @interact
                                def __(Enter_vector = matrix(QQ, v[1], 1, range(v[1]))):
                                    @interact
                                    def __(show_code_vector = checkbox(False, label='How do I enter a vector directly in a sage worksheet?')):
                                           if show_code_vector == True:
                                               html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> <br> To create a vector in sage, say vector v, we type <br> <font color = 'green'>sage:</font color> v = matrix([[1],[3],[1]]) <br> To put it another way <br> <font color = 'green'>sage:</font color> v = matrix([[$x_1$], [$x_2$], . . . ,[$x_n$]]) <br> Notice that each component is enclosed by a set of square braces, the list of components is enclosed by a set of square braces and everything is enclosed by parentheses. <br> To see the vector we just entered in human form, type <br> <font color = 'green'>sage:</font color> show(v)")
                                    try:
                                        x = Enter_matrix\Enter_vector
                                        html('$$ %s %s = %s$$' %(latex(Enter_matrix), latex(x), latex(Enter_vector)))
                                    except:
                                        html('no solution to $$ %s x = %s$$' %(latex(Enter_matrix), latex(Enter_vector)))
                                    finally:
                                        @interact
                                        def __(show_code_solve_right = checkbox(False, label='How do I solve right in a sage worksheet?')):
                                               if show_code_solve_right == True:
                                                    html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> <br> Once we have defined a matrix and vector in sage (see above), We type <br> <font color = 'green'>sage:</font color> A.solve_right(v) <br> >>> [1] <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [0] <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [0] <br> Or simply <br> <font color = 'green'> sage: </font color> A \\ v <br> Where A is a matrix and v is a vector. Note that the number of columns of the matrix must be equal to the dimesion of the vector. ")
                            if ker == True:
                                print A.kernel()
                                @interact
                                def __(show_code_kernel = checkbox(False, label='How do I find the kernel of a matrix in a sage worksheet?')):
                                       if show_code_kernel == True:
                                           html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> To find the kernel, type <br> <font color = 'green'>sage:</font color> A.kernel() <br> Where 'A' is the matrix you have previously defined (see 'How do I enter a matrix in sage' above) ")
                            if eigenvalue == True:
        #!!need exception square matrix

                                print 'Eigenvalues'
                                print A.eigenvalues()
                                @interact
                                def __(show_code_eigenvalue = checkbox(False, label='How do I calculate eigenvalues in a sage worksheet?')):
                                       if show_code_eigenvalue == True:
                                           html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> We type <br> <font color = 'green'>sage:</font color> A.kernel() <br> Where 'A' is the matrix you have previously defined (see 'How do I enter a matrix in sage' above) ")
                            if eigenvec == True:
        #!!need exception square matrix

                                print 'Eigenvectors'
                                w = (A.eigenvectors_left())
                                count = 1
                                for l in w:
                                    print "Eigenvector "+str(count)+" values:"
                                    eVec_Value = l[0]
                                    eVec_Vector = l[1][0]
                                    eVec_Multiplicity = l[2]
                                    for i in ["Eigenvalue:",eVec_Value,"Eigenvector:",vectorDisplay(eVec_Vector),"Multiplicity of Eigenvector:",eVec_Multiplicity]:
                                        print i
                                    count +=1
                                @interact
                                def __(show_code_eigenvectors = checkbox(False, label='How do I find eigenvectors in a sage worksheet?')):
                                   if show_code_eigenvectors == True:
                                       html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> <br> We type <br> <font color = 'green'>sage:</font color> A.eigenvectors_left() <br> Where 'A' is the matrix you have previously defined (see 'How do I enter a matrix in sage' above). However, the output needs to be 'unpacked' <br> >>> <br> [(5, [ <br> (1, 1, 1) <br> ], 1), (0, [ <br> (1, 1, -4) <br> ], 1), (-1, [ <br> (1, -1/5, -7/5) <br> ], 1)] <br> I know, this is ugly. First let's imagine this as one line <br> [(5, [(1, 1, 1)], 1), (0, [(1, 1, -4)], 1), (-1, [(1, -1/5, -7/5)], 1)] <br> There are square braces encosing everything. Inside those braces is the information we want. <br> Let's brake down the first component, '(5, [(1, 1, 1)], 1)' <br> '5' is the coresponding eigenvalue to the eigenvector. <br> '[(1, 1, 1)]' is the eigenvector of the eigenvalue. '1' is the multiplicity of the eigenvector.")
                            if echelonForm == True:
                                x = A.echelon_form()
                                html('$$ %s  %s$$' %(latex(A), latex(x)))
                                @interact
                                def __(show_code_echelon = checkbox(False, label='How do I find the row reduced echelon form of a matrix in a sage worksheet?')):
                                   if show_code_echelon == True:
                                       html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br> We type <br> <font color = 'green'>sage:</font color> A.echelon_form() <br> >>> [1 0 -1] <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [0 1 2] <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [0 0 0]  <br> Where 'A' is the matrix you have previously defined (see 'How do I enter a matrix in sage' above) ")
            if Selections_la == 'Matrix arithmatic':
                pass


    elif Selections == 'Integrate':
        @interact
        def __(integrals = selector(['Indefinite integral', 'Definite integral', 'nothing'], default='nothing', nrows=1, ncols=3,label = "Sections",buttons=False)):
            if integrals == 'Definite integral':
                @interact
                def __(a=input_box(e^x + 5*cos(pi*x), 'What would you like to integrate?'), c=input_box(0, 'From'), d=input_box(5, 'To')):
                    b = a.integrate(x, c, d)
                    html('$$ \int_%s^%s (%s) dx = %s$$' %(c, d, latex(a), latex(b)))
                    aprx = float(b)
                    html('$$%s$$' %(aprx))
                    @interact
                    def __(show_code_defIntegrate = checkbox(False, label='How do I calculate a definite integral in a sage worksheet?')):
                           if show_code_defIntegrate == True:
                               html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br><br> Let's say that we want to integrate $x*sin(x^2)$ from 0 to 5. We type, <br> <font color = 'green'>sage:</font color> integral(x*sin(x^2), x, 0, 5) <br> >>> -1/2*cos(25) + 1/2 <br> to put it another way: <br> <font color = 'green'>sage:</font color> integral('The function we want to integrate, 'The variable we are integrating with respect to', 'From', 'to') <br> If we want to see a decimal aproximation of our integral, we type <br> <font color = 'green'>sage:</font color> float(integral(x*sin(x^2), x, 0, 5)) <br> >>> 0.004398594068263206 ")
            elif integrals == 'Indefinite integral':
                @interact
                def __(a=input_box(e^x + x^2*log(x) + 5*cos(pi*x), 'What would you like to integrate?')):
                    b = a.integrate(x)
                    html('$$ \int (%s) dx = %s$$' %(latex(a), latex(b)))
                    @interact
                    def __(show_code_inIntegrate = checkbox(False, label='How do I calculate an indefinate integral in a sage worksheet?')):
                           if show_code_inIntegrate == True:
                               html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br><br> Let's say that we want to integrate $x*sin(x^2)$. We type, <br> <font color = 'green'>sage:</font color> integral(x*sin(x^2), x) <br> >>> -1/2*cos(x^2) <br> to put it another way: <br> <font color = 'green'>sage:</font color> integral('The function we want to integrate', 'The variable we are integrating with respect to') ")
                    @interact
                    def __(Integral = text_control("Would you like to see a plot?"), plotEq = checkbox(False, label='<font color= "blue">Equation plot</font color>') , inter_Eq = checkbox(False, label='<font color = "red">Integral plot</font color>')):
                        if plotEq == True and inter_Eq == True:
                            Pa = plot(a)
                            Pb = plot(b, color='red')
                            show(Pa + Pb)
                        elif plotEq == True:
                            Pa = plot(a)
                            show(Pa)
                        elif inter_Eq == True:
                            Pb = plot(b, color='red')
                            show(Pb)
    elif Selections == 'Differentiate':
        @interact
        def __(a=input_box(e^x + x^2*log(x) + 5*cos(pi*x), 'What would you like to differetiate?')):
            b = a.diff(x)
            html('$$ d/dx (%s) = %s$$' %(latex(a), latex(b)))
            @interact
            def __(Derivative = text_control("Would you like to see a plot?"), plotEq = checkbox(False, label='<font color="blue">Equation plot</font color>') , inter_Eq = checkbox(False, label='<font color = "red">Derivitive plot</font color>')):
                if plotEq == True and inter_Eq == True:
                    Pa = plot(a)
                    Pb = plot(b,color='red')
                    show(Pa + Pb)
                elif plotEq == True:
                    Pa = plot(a)
                    show(Pa)
                elif inter_Eq == True:
                    Pb = plot(b,color='red')
                    show(Pb)
    elif Selections == 'Equations':
        print 'get to work matt'
    elif Selections == 'Plot':
        @interact
        def __(a = input_box(e^x + x^2*log(x) + 5*cos(pi*x), 'What would you like to plot?')):
            P = plot(a)
            show(a)
            show(P)
︡8b12ff78-8298-4695-8893-522a8b6d3573︡{"interact":{"style":"None","flicker":false,"layout":[[["Start",12,null]],[["Selections",12,null]],[["",12,null]]],"id":"c566353e-11f8-483d-898b-5cbc431cb5d2","controls":[{"default":"What would you like to do?","var":"Start","classes":null,"control_type":"text","label":"Start"},{"buttons":false,"control_type":"selector","ncols":3,"button_classes":null,"default":5,"lbls":["Linear Algebra","Integrate","Differentiate","Equations","Plot","nothing"],"label":"Sections","nrows":2,"width":null,"var":"Selections"}]}}︡
︠802175cb-2306-4ffd-86ea-88aa81742225︠
@interact
def __(show_code_blank = checkbox(False, label='How do I blank in a sage worksheet?')):
       if show_code_blank == True:
           html("Notation: <br> <font color = 'green'>sage:</font color> 'What we enter into sage' (note, we do not enter the 'sage:' part) <br> >>> 'The result that is returned by sage' <br>  ")
︡a65ed695-4657-4134-9e89-1edf1afeb787︡{"interact":{"style":"None","flicker":false,"layout":[[["show_code_blank",12,null]],[["",12,null]]],"id":"98ab7956-2401-4d96-a7d6-d4129b293860","controls":[{"default":false,"var":"show_code_blank","readonly":false,"control_type":"checkbox","label":"How do I blank in a sage worksheet?"}]}}︡
︠1f9b9591-2d96-41f6-82fa-7a379ac03ba5︠
A = matrix([[1,2,3],[3,2,1],[1,1,1]])
︡e4dddc48-cfa0-4a2f-85ec-fb0fd87c6ba2︡
︠ffbe0bf9-d17a-4843-abf9-a8254b8e9915︠
A.determinant()
︡799ccfa0-748e-44e9-b4cc-e022bdab06e4︡{"stdout":"0\n"}︡
︠2a548c61-9bed-4b5f-91e6-627c09c3a6a5︠
A.echelon_form()
︡b8761d48-67f4-4fc8-b82b-48e202e4e13d︡{"stdout":"[ 1  0 -1]\n[ 0  1  2]\n[ 0  0  0]\n"}︡
︠ed22a553-2b3f-4091-9a41-b96f9e9f46f0︠

︠8e0cc342-23ed-4c2b-945b-956155d10d37︠

︠c22c69a8-be1a-4fa6-a766-62880f9c99f7︠









