%% Plot_que_1
psi = (2*pi):(pi/DD):(4*pi);

%     figure(1)
%     title('Aerodynamic flap moment Vs azimuth angle')
%     hold on
%     plot(rad2deg(psi),Rec_dM_num,'r--.')
%     % Analytival M_beta plot
%     plot(rad2deg(psi),Rec_dM_ana,'k-')
%     xlabel('\psi')
%     xlim([360 2*360])
%     ylabel('M_\beta')
%     legend('numerical','Analytical')

    figure(2)
    title('Root blade hub shear forces in the rotating frame')
    plot(rad2deg(psi),Rec_T_dS_x,'r--.',rad2deg(psi),Rec_T_dS_r,'g--.',rad2deg(psi),Rec_T_dS_z,'b--.')
    xlabel('\psi')
    xlim([360 2*360])
    ylabel(' Root blade hub shear forces (N)')
    legend('f_x','f_y','f_z')

    figure(3)
    title('Root blade hub Moments in the rotating frame')
    plot(rad2deg(psi),Rec_T_dm_x,'r--.',rad2deg(psi),Rec_T_dm_y,'g--*',rad2deg(psi),(Rec_T_dm_z),'b--.')
    xlabel('\psi')
    xlim([360 2*360])
    ylabel(' Root blade hub Moments (N-m)')
    legend('m_x','m_y','m_z')

    figure(4)
    title('Non-dimensional rotating frame vertical shear force')
    plot(rad2deg(psi),Rec_N_dS_z,'k--.')
    xlabel('\psi')
    xlim([360 2*360])
    ylabel(' Root blade vertical shear force')
    legend('NS_z')

    figure(5)
    psi = 0:(pi/DD):(2*pi);
    title('Non-dimensional rotating frame vertical shear force')
    plot(rad2deg(psi),Rec_i_dS_z(5,:),'k--.',rad2deg(psi),Rec_i_dS_z(2,:),'r--.',rad2deg(psi),Rec_i_dS_z(3,:),'g--.',rad2deg(psi),Rec_i_dS_z(4,:),'b--.')
    xlabel('\psi')
    xlim([0 360])
    ylabel(' Root blade vertical shear force (N)')
    legend('Blade 1 \psi+0\circ','Blade 2 \psi+90\circ','Blade 3 \psi+180\circ','Blade 4 \psi+270\circ')

    figure(6)
    title('hub forces in the fixed frame')
    plot(rad2deg(psi),Sum_F_x,'r--.',rad2deg(psi),Sum_F_y,'g--.',rad2deg(psi),Sum_F_z,'b--.')
    xlabel('\psi')
    xlim([0 360])
    ylabel(' Hub forces (N)')
    legend('F_x','F_y','F_z')

    figure(7)
    title('hub moments in the fixed frame','4')
    plot(rad2deg(psi),Sum_M_x,'r--.',rad2deg(psi),Sum_M_y,'g--.',rad2deg(psi),Sum_M_z,'b--.')
    xlabel('\psi')
    xlim([0 360])
    ylabel(' hub Moments (N-m)')
    legend('M_x','M_y','M_z')
    
    figure(8)    
    title('Steady rotor forces H, Y, T in  Fixed Frame Hub forces (N)')
    plot(rad2deg(psi),Thrust,'r--',rad2deg(psi),Rotor_Drag,'g--.',rad2deg(psi),Rotor_SF,'b--.')
    xlabel('\psi')
    xlim([0 360])
    ylabel('Steady rotor forces (N)')
    legend('T','H','Y')

    figure(9)
    title('Steady rotor Moments in the fixed frame Hub forces (N) ')
    hold on
    plot(rad2deg(psi),Rotor_Torque,'r--.',rad2deg(psi),Rotor_Roll,'g--.',rad2deg(psi),Rotor_Pitch,'b--.')
    xlabel('\psi')
    xlim([0 360])
    ylabel(' Steady rotor Moments (N-m)')
    legend('Torque-Q','Roll','Pitch') 