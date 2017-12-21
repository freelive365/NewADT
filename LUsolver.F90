module LU

!----------------------------------------module coment
!  Version     :  V1.0    
!  Coded by    :  syz 
!  Date        :  
!-----------------------------------------------------
!  Description :  LU �ֽ�ⷽ��
!    
!-----------------------------------------------------

contains  


subroutine LUsolve(A,b,x,N)

implicit real(a-z)
integer::N
real::A(N,N),b(N),x(N)

real::L(N,N),U(N,N)

real::y(N)

 call doolittle(A,L,U,N)
  
 call  downtri(L,b,y,N)
 
 call uptri(U,y,x,N)

end subroutine LUsolve


subroutine doolittle(A,L,U,N)
!---------------------------------subroutine  comment
!  Version   :  V1.0    
!  Coded by  :  syz 
!  Date      :  
!-----------------------------------------------------
!  Purpose   :  LU�ֽ�֮Doolittle����
!              A=LU
!-----------------------------------------------------
!  Input  parameters  :
!       1.    A  ����
!       2.    N  ����
!  Output parameters  :
!       1.   L
!       2.   U
!  Common parameters  :
!
!----------------------------------------------------
!  Post Script :
!       1.
!       2.
!----------------------------------------------------

implicit real(a-z)
integer::N,i,k,r

real::A(N,N),L(N,N),U(N,N)
!U�ĵ�һ��


U(1,:)=A(1,:)

!L�ĵ�һ��
L(:,1)=a(:,1)/U(1,1)

do k=2,N
   
    l(k,k)=1
   
   do j=k,n
       s=0
       do m=1,k-1
        s=s+l(k,m)*u(m,j)
       end do
       u(k,j)=a(k,j)-s
   end do
   
   
   do i=k+1,n
     s=0
     do m=1,k-1
      s=s+l(i,m)*u(m,k)
     end do
     l(i,k)=(a(i,k)-s)/u(k,k)
       
   end do
 
   
end do

end subroutine doolittle


subroutine uptri(A,b,x,N)
!---------------------------------subroutine  comment
!  Version   :  V1.0    
!  Coded by  :  syz 
!  Date      :  2010-4-8
!-----------------------------------------------------
!  Purpose   :  �����Ƿ�����Ļش�����
!                 Ax=b
!-----------------------------------------------------
!  Input  parameters  :
!       1.   A(N,N)ϵ������
!       2.   b(N)������
!       3.   N����ά��
!  Output parameters  :
!       1.  x  ���̵ĸ�
!       2.
!  Common parameters  :
!
!----------------------------------------------------

implicit real(a-z)

integer::i,j,k,N

real::A(N,N),b(N),x(N)

x(N)=b(N)/A(N,N)

!�ش�����
do i=n-1,1,-1
   
    x(i)=b(i)
   do j=i+1,N
    x(i)=x(i)-a(i,j)*x(j)
   end do
    x(i)=x(i)/A(i,i)

end do

end subroutine uptri


subroutine downtri(A,b,x,N)
!---------------------------------subroutine  comment
!  Version   :  V1.0    
!  Coded by  :  syz 
!  Date      :  2010-4-9
!-----------------------------------------------------
!  Purpose   :  �����Ƿ�����Ļش�����
!                 Ax=b
!-----------------------------------------------------
!  Input  parameters  :
!       1.   A(N,N)ϵ������
!       2.   b(N)������
!       3.   N����ά��
!  Output parameters  :
!       1.  x  ���̵ĸ�
!       2.
!  Common parameters  :
!
!----------------------------------------------------

implicit real(a-z)
integer::i,j,N
real::A(N,N),b(N),x(N)

x(1)=b(1)/a(1,1)

do k=2,N
   x(k)=b(k)
   do i=1,k-1
      x(k)=x(k)-a(k,i)*x(i)
   end do
   x(k)=x(k)/a(k,k)

end do

end subroutine downtri

end module LU

