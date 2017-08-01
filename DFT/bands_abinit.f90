implicit none
integer i,j,k,nbands,nkpts
real modk(100),kpt(100,3),band(100,100),incrementk(200),plotpoint(100)
character(100) texto
character(100) inputfile
plotpoint(1)=0
write(*,*)'Nome do arquivo com estrutura de bandas a ser lido?'
read(*,*)inputfile
write(*,*)'Voce escolheu:',inputfile
open(1,file=inputfile,ACCESS='SEQUENTIAL')
read(1,*) texto,texto,texto,texto,texto,texto,nkpts 
write(*,*) 'número de pontos k',nkpts
do i=1,nkpts
   read(1,*) texto,texto,texto,nbands,texto,texto,texto,kpt(i,1),kpt(i,2),kpt(i,3) 
   read(1,*) (band(j,i),j=1,nbands)
   modk(i)=sqrt(kpt(i,1)**2+kpt(i,2)**2+kpt(i,3)**2)
      if  (i > 1) then
          incrementk(i)=sqrt((kpt(i,1)-kpt(i-1,1))**2+(kpt(i,2)-kpt(i-1,2))**2+(kpt(i,3)-kpt(i-1,3))**2)
          plotpoint(i)=plotpoint(i-1)+abs(incrementk(i))
      end if
   write(*,*)'kpoint',i,(kpt(i,j),j=1,3),'modulo',modk(i),plotpoint(i) 
  !write(*,*)'bands'
  !write(*,*)(band(j,i),j=1,8)
end do
write(*,*) 'número de bandas', nbands
open(2,file='bandas.dat')
do j=1,nbands
     do i=1,nkpts
        write(2,*) plotpoint(i),band(j,i)
     end do
     write(2,*) " "
end do 
close(2)
close(1)
end
