︠5b070e04-cc3c-44c7-9a3a-48a21b21570c︠
import os
def enter_a_matrix2():
    p = []
    @interact
    def __(m = input_grid(1, 2, default=3, label='Matrix size: rows, columns. Click the green buton to evaluate', width=4)):
        v = m[0]
        @interact
        def __(p = input_grid(v[0], v[1], default=3, label='Matrix', width=2)):
            log = open('tempMatrix', mode='w')
            log.write("%s" % (p))
            log.flush()
            log.close()
            show(matrix(p))
    log2 = open('tempMatrix',mode='r')
    r = log2.read()
    r.split()
    print r
    #deleate temp file
    print p
    return p
︡b42ed62f-acb9-4b66-a889-e386fcf694d2︡
︠7685aea1-84fd-434e-a723-b00bdbde8f8b︠
enter_a_matrix2()
︡81f573c5-8f0e-49a7-8305-2616174c1011︡{"interact":{"style":"None","flicker":false,"layout":[[["m",12,null]],[["",12,null]]],"id":"ea35ea67-3ba9-45fb-bd08-35302a2369a8","controls":[{"control_type":"input-grid","ncols":2,"default":[["3","3"]],"label":"Matrix size: rows, columns. Click the green buton to evaluate","nrows":1,"width":4,"var":"m"}]}}︡{"stdout":"[[3, 5, 3], [3, 3, 3], [3, 5, 3]]\n[]\n[]\n"}︡
︠205d18cc-a465-4c93-8692-1e5ddc5d6846︠

︠34b006bf-7705-4af0-8fa4-18b0a9d552ba︠

︠0ecdcd0b-c8a5-4e07-ac1c-0b0287f8ca3a︠









