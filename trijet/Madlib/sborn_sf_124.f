      subroutine sborn_sf_124(p_born,wgtjk)
      implicit none
      include "nexternal.inc"
      double precision p_born(0:3,nexternal-1),wgt,
     &    wgtjk(nexternal-1,nexternal-1)
      integer m,n
 
      do m=1,nexternal-2
      do n=m+1,nexternal-1
 
      if ( m.eq.           1  .and. n.eq.           2  ) then
         call sb_sf_124_006(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           3  ) then
         call sb_sf_124_007(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           4  ) then
         call sb_sf_124_008(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           5  ) then
         call sb_sf_124_009(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           1  ) then
         call sb_sf_124_010(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           3  ) then
         call sb_sf_124_011(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           4  ) then
         call sb_sf_124_012(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           5  ) then
         call sb_sf_124_013(p_born,wgt)
      elseif ( m.eq.           3  .and. n.eq.           1  ) then
         call sb_sf_124_014(p_born,wgt)
      elseif ( m.eq.           3  .and. n.eq.           2  ) then
         call sb_sf_124_015(p_born,wgt)
      elseif ( m.eq.           3  .and. n.eq.           4  ) then
         call sb_sf_124_016(p_born,wgt)
      elseif ( m.eq.           3  .and. n.eq.           5  ) then
         call sb_sf_124_017(p_born,wgt)
      elseif ( m.eq.           4  .and. n.eq.           1  ) then
         call sb_sf_124_018(p_born,wgt)
      elseif ( m.eq.           4  .and. n.eq.           2  ) then
         call sb_sf_124_019(p_born,wgt)
      elseif ( m.eq.           4  .and. n.eq.           3  ) then
         call sb_sf_124_020(p_born,wgt)
      elseif ( m.eq.           4  .and. n.eq.           5  ) then
         call sb_sf_124_021(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           1  ) then
         call sb_sf_124_022(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           2  ) then
         call sb_sf_124_023(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           3  ) then
         call sb_sf_124_024(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           4  ) then
         call sb_sf_124_025(p_born,wgt)
      else
         wgt=0d0
c         write (*,*)
c     &      "No corresponding color linked Born found in sborn_sf"
      endif
 
      wgtjk(m,n)=-wgt
      wgtjk(n,m)=wgtjk(m,n)
      enddo ! loop over color-links
      enddo ! loop over color-links
 
      do m=1,nexternal-1
         wgtjk(m,m)=0d0
         do n=1,nexternal-1
            if (n.ne.m) wgtjk(m,m)=wgtjk(m,m)-wgtjk(n,m)
         enddo
      enddo
 
 
      return
      end