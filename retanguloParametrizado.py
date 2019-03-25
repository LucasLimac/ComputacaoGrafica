from OpenGL.GLUT import *
from OpenGL.GLU import *
from OpenGL.GL import *
from math import *
 
print("Quantos vertices na base voce quer?")
a = int(input())
ang = 2*pi/a
r = 1

vertices = []

print(a)
for i in range (0,a):
    x = r*cos(ang*i)
    y = -1
    z = r*sin(ang*i)

    vertices += [(x,y,z)]


print(a)
for i in range (0,a):
    x = r*cos(ang*i)
    y = 1
    z = r*sin(ang*i)

    vertices += [(x,y,z)]

print(vertices)

linhas = []

for i in range (0,a*2):

    if(i<=a):    
    
        if (i==1):
            linhas += [(i,a)]
            linhas += [(i, i+1)]
            linhas += [(i,i+a)]
        else:
            linhas += [(i, i+1)]
            linhas += [(i,i+a)]
    
    






faces = []


   

cores = ( (1,0,0),(1,1,0),(0,1,0),(0,1,1),(0,0,1) )
 
def PiramidePara():
    glBegin(GL_QUADS)
    i = 0
    for face in faces:
        glColor3fv(cores[i%len(cores)])
        for vertex in face:
            #glColor3fv(cores[vertex])
            glVertex3fv(vertices[vertex])
        i = i+1
    glEnd()
 
    glColor3fv((0,0.5,0))
    glBegin(GL_LINES)
    for linha in linhas:
        for vertice in linha:
            glVertex3fv(vertices[vertice])
    glEnd()
 
def abacaxi():
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    glRotatef(2,1,3,0)
    PiramidePara()
    glutSwapBuffers()
  
def timer(i):
    glutPostRedisplay()
    glutTimerFunc(50,timer,1)
 
# PROGRAMA PRINCIPAL
glutInit(sys.argv)
glutInitDisplayMode(GLUT_DOUBLE | GLUT_RGBA | GLUT_DEPTH | GLUT_MULTISAMPLE)
glutInitWindowSize(800,600)
glutCreateWindow("Piramide Parametrizada")
glutDisplayFunc(abacaxi)
glEnable(GL_MULTISAMPLE)
glEnable(GL_DEPTH_TEST)
glClearColor(0.,0.,0.,1.)
gluPerspective(45,800.0/600.0,0.1,50.0)
glTranslatef(0.0,0.0,-8)
glRotatef(45,1,1,1)
glutTimerFunc(50,timer,1)
glutMainLoop()