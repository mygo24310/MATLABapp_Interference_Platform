classdef ganshe2_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                       matlab.ui.Figure
        TabGroup                       matlab.ui.container.TabGroup
        IntroductionTab                matlab.ui.container.Tab
        Panel_2                        matlab.ui.container.Panel
        Image4                         matlab.ui.control.Image
        TheformulaforinterferencelightintensityofnsmallholesisLabel  matlab.ui.control.Label
        Label_11                       matlab.ui.control.Label
        Label_10                       matlab.ui.control.Label
        SchematicdiagramofthreeholeinterferenceLabel  matlab.ui.control.Label
        Image3                         matlab.ui.control.Image
        Image2                         matlab.ui.control.Image
        Image                          matlab.ui.control.Image
        TextArea                       matlab.ui.control.TextArea
        MultiholeinterferencesimulationexperimentTab  matlab.ui.container.Tab
        SaveImageAsButton_2            matlab.ui.control.Button
        ClearCoordinateSystemButton_2  matlab.ui.control.Button
        PlottinglightintensitydistributionButton  matlab.ui.control.Button
        SaveImageAsButton              matlab.ui.control.Button
        ClearCoordinateSystemButton    matlab.ui.control.Button
        PlottinginterferencefringesButton  matlab.ui.control.Button
        ExperimentalparametersettingPanel  matlab.ui.container.Panel
        ImageobservationrangesettingLabel  matlab.ui.control.Label
        NANLabel_4                     matlab.ui.control.Label
        NANLabel_3                     matlab.ui.control.Label
        NANLabel_2                     matlab.ui.control.Label
        NANLabel                       matlab.ui.control.Label
        Label_7                        matlab.ui.control.Label
        lightsource001Label            matlab.ui.control.Label
        Label_5                        matlab.ui.control.Label
        Hole6ycoordinatemEditField     matlab.ui.control.NumericEditField
        Hole6ycoordinatemEditFieldLabel  matlab.ui.control.Label
        Hole6xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_8                      matlab.ui.control.Label
        Hole5ycoordinatemEditField     matlab.ui.control.NumericEditField
        ymLabel                        matlab.ui.control.Label
        Hole5xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_7                      matlab.ui.control.Label
        Hole4ycoordinatemEditField     matlab.ui.control.NumericEditField
        Hole4ycoordinatemEditFieldLabel  matlab.ui.control.Label
        Hole4xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_6                      matlab.ui.control.Label
        Hole3ycoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_5                      matlab.ui.control.Label
        Hole3xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_4                      matlab.ui.control.Label
        Hole2ycoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_3                      matlab.ui.control.Label
        Hole2xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel_2                      matlab.ui.control.Label
        Hole1ycoordinatemEditField     matlab.ui.control.NumericEditField
        Hole1ycoordinatemEditFieldLabel  matlab.ui.control.Label
        Hole1xcoordinatemEditField     matlab.ui.control.NumericEditField
        xmLabel                        matlab.ui.control.Label
        Customizethenumberofholesminimum2maximum6EditField  matlab.ui.control.NumericEditField
        Label_4                        matlab.ui.control.Label
        SetthelightsourcecoordinatesLabel  matlab.ui.control.Label
        zmEditField                    matlab.ui.control.NumericEditField
        zmLabel                        matlab.ui.control.Label
        LightsourceycoordinatemEditField  matlab.ui.control.NumericEditField
        LightsourceycoordinatemEditFieldLabel  matlab.ui.control.Label
        LightsourcexcoordinatemEditField  matlab.ui.control.NumericEditField
        LightsourcexcoordinatemEditFieldLabel  matlab.ui.control.Label
        ThedistancebetweentwoholesinnoncustomizedcasemmEditField  matlab.ui.control.NumericEditField
        mmLabel                        matlab.ui.control.Label
        LightsourceamplitudeA0Slider   matlab.ui.control.Slider
        Label_2                        matlab.ui.control.Label
        SelecttheinterferencetypeDropDown  matlab.ui.control.DropDown
        Label                          matlab.ui.control.Label
        NumberofequalpartsintheyaxisdirectionN2Spinner  matlab.ui.control.Spinner
        NumberofequalpartsintheyaxisdirectionN2SpinnerLabel  matlab.ui.control.Label
        NumberofequalpartsinthexaxisdirectionN1Spinner  matlab.ui.control.Spinner
        NumberofequalpartsinthexaxisdirectionN1SpinnerLabel  matlab.ui.control.Label
        MaximumverticalcoordinateybmSpinner  matlab.ui.control.Spinner
        MaximumverticalcoordinateybmSpinnerLabel  matlab.ui.control.Label
        MaximumhorizontalcoordinatexbmSpinner  matlab.ui.control.Spinner
        MaximumhorizontalcoordinatexbmSpinnerLabel  matlab.ui.control.Label
        MinimumverticalcoordinateyamSpinner  matlab.ui.control.Spinner
        MinimumverticalcoordinateyamSpinnerLabel  matlab.ui.control.Label
        MinimumhorizontalcoordinatexamSpinner  matlab.ui.control.Spinner
        MinimumhorizontalcoordinatexamSpinnerLabel  matlab.ui.control.Label
        DmEditField                    matlab.ui.control.NumericEditField
        DmLabel                        matlab.ui.control.Label
        WavelengthnmEditField          matlab.ui.control.NumericEditField
        WavelengthnmEditFieldLabel     matlab.ui.control.Label
        UIAxes_2                       matlab.ui.control.UIAxes
        UIAxes                         matlab.ui.control.UIAxes
    end

    
    properties (Access = public)
        lambda;D;m;x0;y0;z0;num;s1x;s1y;s2x;s2y;s3x;s3y;s4x;s4y;
        s5x;s5y;s6x;s6y;A0;xa;xb;ya;yb;N1;N2;I1;I2;I3;I4;I5;% Description
    end
    
    methods (Access = private)
        
        function getvalue(app)
            app.lambda = app.WavelengthnmEditField.Value*1e-9;%wavelength
            app.D = app.DmEditField.Value;% The distance from the aperture plane to the light screen
            app.m = app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Value*1e-6;% The distance between the two holes
            app.x0 = app.LightsourcexcoordinatemEditField.Value;% Light source x coordinate
            app.y0 = app.LightsourceycoordinatemEditField.Value;% Light source y coordinate
            app.z0 = app.zmEditField.Value;% Light source z coordinate
            app.num = app.Customizethenumberofholesminimum2maximum6EditField.Value;%Number of small holes
            app.s1x = app.Hole1xcoordinatemEditField.Value*1e-6;%Small hole 1x coordinates
            app.s1y = app.Hole1ycoordinatemEditField.Value*1e-6;%Small hole 1y coordinates
            app.s2x = app.Hole2xcoordinatemEditField.Value*1e-6;
            app.s2y = app.Hole2ycoordinatemEditField.Value*1e-6;
            app.s3x = app.Hole3xcoordinatemEditField.Value*1e-6;
            app.s3y = app.Hole3ycoordinatemEditField.Value*1e-6;
            app.s4x = app.Hole4xcoordinatemEditField.Value*1e-6;
            app.s4y = app.Hole4ycoordinatemEditField.Value*1e-6;
            app.s5x = app.Hole5xcoordinatemEditField.Value*1e-6;
            app.s5y = app.Hole5ycoordinatemEditField.Value*1e-6;
            app.s6x = app.Hole6xcoordinatemEditField.Value*1e-6;
            app.s6y = app.Hole6ycoordinatemEditField.Value*1e-6;

            app.A0 = app.LightsourceamplitudeA0Slider.Value;%Light source amplitude
            app.xa=app.MinimumhorizontalcoordinatexamSpinner.Value; %Minimum horizontal coordinate value
            app.xb=app.MaximumhorizontalcoordinatexbmSpinner.Value;%Maximum horizontal axis value
            app.ya=app.MinimumverticalcoordinateyamSpinner.Value;%Minimum vertical coordinate value
            app.yb=app.MaximumverticalcoordinateybmSpinner.Value;%Maximum vertical coordinate value
            app.N1=app.NumberofequalpartsinthexaxisdirectionN1Spinner.Value;%Number of equal parts in x direction
            app.N2=app.NumberofequalpartsintheyaxisdirectionN2Spinner.Value;%Number of equal parts in the y direction
        end

        function rgb = wavelength_to_rgb_fixed(~,wavelength)
            % Convert wavelength to RGB color value of fixed color
            % Wavelength range: 380 nm - 760 nm
            if wavelength >= 380 && wavelength < 440
                r = -(wavelength - 440) / (440 - 380);
                g = 0;
                b = 1;
            elseif wavelength >= 440 && wavelength < 490
                r = 0;
                g = (wavelength - 440) / (490 - 440);
                b = 1;
            elseif wavelength >= 490 && wavelength < 510
                r = 0;
                g = 1;
                b = -(wavelength - 510) / (510 - 490);
            elseif wavelength >= 510 && wavelength < 580
                r = (wavelength - 510) / (580 - 510);
                g = 1;
                b = 0;
            elseif wavelength >= 580 && wavelength < 645
                r = 1;
                g = -(wavelength - 645) / (645 - 580);
                b = 0;
            elseif wavelength >= 645 && wavelength <= 760
                r = 1;
                g = 0;
                b = 0;
            else
                r = 0;
                g = 0;
                b = 0;
            end
            rgb = [r, g, b];
        end
        
        function light1(app)
            % Draw a stripe image
            getvalue(app);
            x1=linspace(app.xa,app.xb,app.N1);   %x-coordinate
            y1=linspace(app.ya,app.yb,app.N2);   %y-coordinate
            [x1, y1]=meshgrid(x1,y1);
            r1 = sqrt((x1-app.s1x)^2 + (y1-app.s1y)^2 + app.D^2);% Optical path of hole 1
            r2 = sqrt((x1-app.s2x)^2 + (y1-app.s2y)^2 + app.D^2);% Optical path of hole 2
            r01 = sqrt((app.x0-app.s1x)^2 + (app.y0-app.s1y)^2 + app.z0^2);% Distance from light source to hole 1
            r02 = sqrt((app.x0-app.s2x)^2 + (app.y0-app.s2y)^2 + app.z0^2);
            phi1 = 2*pi*r1/app.lambda;
            phi2 = 2*pi*r2/app.lambda;
            E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2);% electric field
            app.I1 = E.*conj(E); % Light intensity
            
            gray_image = mat2gray(app.I1);% Convert light intensity to grayscale
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); % Select the color corresponding to the wavelength
            % Convert grayscale image to color image
            if any(color ~= [0, 0, 0]) % If the color is not black (which means the wavelength is within the visible light range)
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else % If the color is black (which means the wavelength is not in the visible light range), set it to black and white.
                color_image = repmat(gray_image, [1, 1, 3]);
            end
            imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
            xlabel(app.UIAxes,'x (m)','FontSize', 12)
            ylabel(app.UIAxes,'y (m)','FontSize', 12)
            title(app.UIAxes,'Double hole interference fringes (horizontally arranged)','FontSize', 12)
            axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);% Set axis limits
            axis(app.UIAxes, 'on');
            x_ticks = app.xa:0.1:app.xb;
            y_ticks = app.ya:0.1:app.yb;
            % Set the scale of the X and Y axes
            xticks(app.UIAxes,x_ticks);
            yticks(app.UIAxes,y_ticks);

        end
        
        function light2(app)
            % Draw a stripe image
            getvalue(app);
            x2=linspace(app.xa,app.xb,app.N1);   
            y2=linspace(app.ya,app.yb,app.N2);   
            [x2, y2]=meshgrid(x2,y2);
            r1 = sqrt((x2-app.s1x)^2 + (y2-app.s1y)^2 + app.D^2);
            r2 = sqrt((x2-app.s2x)^2 + (y2-app.s2y)^2 + app.D^2);
            r3 = sqrt((x2-app.s3x)^2 + (y2-app.s3y)^2 + app.D^2);
            r01 = sqrt((app.x0-app.s1x)^2 + (app.y0-app.s1y)^2 + app.z0^2);
            r02 = sqrt((app.x0-app.s2x)^2 + (app.y0-app.s2y)^2 + app.z0^2);
            r03 = sqrt((app.x0-app.s3x)^2 + (app.y0-app.s3y)^2 + app.z0^2);
            phi1 = 2*pi*r1/app.lambda;
            phi2 = 2*pi*r2/app.lambda;
            phi3 = 2*pi*r3/app.lambda;
            E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3);
            app.I2 = E.*conj(E); 
            
            gray_image = mat2gray(app.I2);
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); 
            if any(color ~= [0, 0, 0]) 
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else 
                color_image = repmat(gray_image, [1, 1, 3]);
            end
            imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
            xlabel(app.UIAxes,'x (m)','FontSize', 12)
            ylabel(app.UIAxes,'y (m)','FontSize', 12)
            title(app.UIAxes,'Three-hole interference fringes (equilateral triangle arrangement)','FontSize', 12)
            axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);
            axis(app.UIAxes, 'on');
            x_ticks = app.xa:0.1:app.xb;
            y_ticks = app.ya:0.1:app.yb;
            xticks(app.UIAxes,x_ticks);
            yticks(app.UIAxes,y_ticks);
        end
     
        function light3(app)
            % Draw a stripe image
            getvalue(app);
            x3=linspace(app.xa,app.xb,app.N1);   
            y3=linspace(app.ya,app.yb,app.N2);   
            [x3, y3]=meshgrid(x3,y3);
            r1 = sqrt((x3-app.s1x)^2 + (y3-app.s1y)^2 + app.D^2);
            r2 = sqrt((x3-app.s2x)^2 + (y3-app.s2y)^2 + app.D^2);
            r3 = sqrt((x3-app.s3x)^2 + (y3-app.s3y)^2 + app.D^2);
            r4 = sqrt((x3-app.s4x)^2 + (y3-app.s4y)^2 + app.D^2);
            r01 = sqrt((app.x0-app.s1x)^2 + (app.y0-app.s1y)^2 + app.z0^2);
            r02 = sqrt((app.x0-app.s2x)^2 + (app.y0-app.s2y)^2 + app.z0^2);
            r03 = sqrt((app.x0-app.s3x)^2 + (app.y0-app.s3y)^2 + app.z0^2);
            r04 = sqrt((app.x0-app.s4x)^2 + (app.y0-app.s4y)^2 + app.z0^2);
            phi1 = 2*pi*r1/app.lambda;
            phi2 = 2*pi*r2/app.lambda;
            phi3 = 2*pi*r3/app.lambda;
            phi4 = 2*pi*r4/app.lambda;
            E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3) + (app.A0/r04)*exp(1i*phi4);
            app.I3 = E.*conj(E); 
            
            gray_image = mat2gray(app.I3);
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); 
            if any(color ~= [0, 0, 0]) 
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else 
                color_image = repmat(gray_image, [1, 1, 3]);
            end
            imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
            xlabel(app.UIAxes,'x (m)','FontSize', 12)
            ylabel(app.UIAxes,'y (m)','FontSize', 12)
            title(app.UIAxes,'Four-hole interference fringes (horizontally arranged)','FontSize', 12)
            axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);
            axis(app.UIAxes, 'on');
            x_ticks = app.xa:0.1:app.xb;
            y_ticks = app.ya:0.1:app.yb;
            xticks(app.UIAxes,x_ticks);
            yticks(app.UIAxes,y_ticks);
            
        end
        
        function light4(app)
            % Draw a stripe image
            getvalue(app);
            x4=linspace(app.xa,app.xb,app.N1);   
            y4=linspace(app.ya,app.yb,app.N2);   
            [x4, y4]=meshgrid(x4,y4);
            r1 = sqrt((x4-app.s1x)^2 + (y4-app.s1y)^2 + app.D^2);
            r2 = sqrt((x4-app.s2x)^2 + (y4-app.s2y)^2 + app.D^2);
            r3 = sqrt((x4-app.s3x)^2 + (y4-app.s3y)^2 + app.D^2);
            r4 = sqrt((x4-app.s4x)^2 + (y4-app.s4y)^2 + app.D^2);
            r01 = sqrt((app.x0-app.s1x)^2 + (app.y0-app.s1y)^2 + app.z0^2);
            r02 = sqrt((app.x0-app.s2x)^2 + (app.y0-app.s2y)^2 + app.z0^2);
            r03 = sqrt((app.x0-app.s3x)^2 + (app.y0-app.s3y)^2 + app.z0^2);
            r04 = sqrt((app.x0-app.s4x)^2 + (app.y0-app.s4y)^2 + app.z0^2);
            phi1 = 2*pi*r1/app.lambda;
            phi2 = 2*pi*r2/app.lambda;
            phi3 = 2*pi*r3/app.lambda;
            phi4 = 2*pi*r4/app.lambda;
            E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3) + (app.A0/r04)*exp(1i*phi4);
            app.I4 = E.*conj(E); 
            
            gray_image = mat2gray(app.I4);
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); 
            if any(color ~= [0, 0, 0]) 
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else 
                color_image = repmat(gray_image, [1, 1, 3]);
            end
            imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
            xlabel(app.UIAxes,'x (m)','FontSize', 12)
            ylabel(app.UIAxes,'y (m)','FontSize', 12)
            title(app.UIAxes,'Four-hole interference fringes (square arrangement)','FontSize', 12)
            axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);
            axis(app.UIAxes, 'on');
            x_ticks = app.xa:0.1:app.xb;
            y_ticks = app.ya:0.1:app.yb;
            xticks(app.UIAxes,x_ticks);
            yticks(app.UIAxes,y_ticks);
        end
 
        function light5(app)
            % Draw a stripe image
            getvalue(app);
            x5=linspace(app.xa,app.xb,app.N1);   
            y5=linspace(app.ya,app.yb,app.N2);   
            [x5, y5]=meshgrid(x5,y5);
            r1 = sqrt((x5-app.s1x)^2 + (y5-app.s1y)^2 + app.D^2);% Optical path of hole 1
            r2 = sqrt((x5-app.s2x)^2 + (y5-app.s2y)^2 + app.D^2);% Optical path of hole 2
            r3 = sqrt((x5-app.s3x)^2 + (y5-app.s3y)^2 + app.D^2);% Optical path of hole 3
            r4 = sqrt((x5-app.s4x)^2 + (y5-app.s4y)^2 + app.D^2);% Optical path of hole 4
            r5 = sqrt((x5-app.s5x)^2 + (y5-app.s5y)^2 + app.D^2);% Optical path of hole 5
            r6 = sqrt((x5-app.s6x)^2 + (y5-app.s6y)^2 + app.D^2);% Optical path of hole 6
            r01 = sqrt((app.x0-app.s1x)^2 + (app.y0-app.s1y)^2 + app.z0^2);
            r02 = sqrt((app.x0-app.s2x)^2 + (app.y0-app.s2y)^2 + app.z0^2);
            r03 = sqrt((app.x0-app.s3x)^2 + (app.y0-app.s3y)^2 + app.z0^2);
            r04 = sqrt((app.x0-app.s4x)^2 + (app.y0-app.s4y)^2 + app.z0^2);
            r05 = sqrt((app.x0-app.s5x)^2 + (app.y0-app.s5y)^2 + app.z0^2);
            r06 = sqrt((app.x0-app.s6x)^2 + (app.y0-app.s6y)^2 + app.z0^2);
            phi1 = (2*pi*(r1+r01))/app.lambda;phi4 = (2*pi*(r4+r04))/app.lambda;
            phi2 = (2*pi*(r2+r02))/app.lambda;phi5 = (2*pi*(r5+r05))/app.lambda;
            phi3 = (2*pi*(r3+r03))/app.lambda;phi6 = (2*pi*(r6+r06))/app.lambda;

            if app.num == 2
                E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2);
            elseif app.num == 3
                E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3);
            elseif app.num == 4
                E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3) + (app.A0/r04)*exp(1i*phi4);
            elseif app.num == 5
                E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3) + (app.A0/r04)*exp(1i*phi4) + (app.A0/r05)*exp(1i*phi5);
            elseif app.num == 6
                E = (app.A0/r01)*exp(1i*phi1) + (app.A0/r02)*exp(1i*phi2) + (app.A0/r03)*exp(1i*phi3) + (app.A0/r04)*exp(1i*phi4) + (app.A0/r05)*exp(1i*phi5) + (app.A0/r06)*exp(1i*phi6);
            end
            
            app.I5 = E.*conj(E); 
            gray_image = mat2gray(app.I5);
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); 
            if any(color ~= [0, 0, 0]) 
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else
                color_image = repmat(gray_image, [1, 1, 3]);
            end
            imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
            xlabel(app.UIAxes,'x (m)','FontSize', 12)
            ylabel(app.UIAxes,'y (m)','FontSize', 12)
            title(app.UIAxes,'Customized porous interference fringes','FontSize', 12)
            axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);
            axis(app.UIAxes, 'on');
            x_ticks = app.xa:0.1:app.xb;
            y_ticks = app.ya:0.1:app.yb;
            xticks(app.UIAxes,x_ticks);
            yticks(app.UIAxes,y_ticks);
        end
        
        function light_intensity1(app)
            getvalue(app);
            light1(app);
            x=linspace(app.xa,app.xb,app.N1);   %x coordinate
            y=linspace(app.ya,app.yb,app.N2);   %y coordinate
            [x, y]=meshgrid(x,y);
            surf(app.UIAxes_2, x, y, app.I1, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet)  % Using the jet colormap
            colorbar(app.UIAxes_2)  % Displaying a colorbar on UIAxes_2
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)
            % Set axis limits
            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I1(:))]);  % Set the z-axis range to 0 to the maximum value of the light intensity
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            % Set the scale of the X and Y axes
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);

        end
        
        function light_intensity2(app)
            getvalue(app);
            light2(app);
            x=linspace(app.xa,app.xb,app.N1);  
            y=linspace(app.ya,app.yb,app.N2);  
            [x, y]=meshgrid(x,y);
            surf(app.UIAxes_2, x, y, app.I2, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet) 
            colorbar(app.UIAxes_2)  
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)

            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I2(:))]);  
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);
        end

        function light_intensity3(app)
            getvalue(app);
            light3(app);
            x=linspace(app.xa,app.xb,app.N1);   
            y=linspace(app.ya,app.yb,app.N2);  
            [x, y]=meshgrid(x,y);
            surf(app.UIAxes_2, x, y, app.I3, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet) 
            colorbar(app.UIAxes_2)  
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)

            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I3(:))]); 
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);
        end

        
        function light_intensity4(app)
            getvalue(app);
            light4(app);
            x=linspace(app.xa,app.xb,app.N1);  
            y=linspace(app.ya,app.yb,app.N2);   
            [x, y]=meshgrid(x,y);
            surf(app.UIAxes_2, x, y, app.I4, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet) 
            colorbar(app.UIAxes_2)  
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)
         
            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I4(:))]);  
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);
        end
     
        function light_intensity5(app)
            getvalue(app);
            light5(app);
            x=linspace(app.xa,app.xb,app.N1);  
            y=linspace(app.ya,app.yb,app.N2);  
            [x, y]=meshgrid(x,y);
            surf(app.UIAxes_2, x, y, app.I5, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet) 
            colorbar(app.UIAxes_2)  
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)
            
            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I5(:))]); 
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);
        end
               
        function saveImage(app, image)
            % Choose the location and format to save the file
            [file, path] = uiputfile({'*.jpg'; '*.png'; '*.bmp'}, 'Save Image As');
            % If the user does not cancel the operation
            if ischar(file)
                % Get the complete file path
                fullFileName = fullfile(path, file);
                % Saves the image in the specified UIAxes to the specified path
                exportgraphics(image, fullFileName);
                % Displays a successful save message
                uialert(app.UIFigure, 'Image saved successfully!', 'success');
            else
                % If the user cancels the save
                uialert(app.UIFigure, 'Operation Cancelled!', 'tips');
            end
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % Set the app interface to the center
            Position_Screen = get(0,'ScreenSize');%Get the screen size
            Position_App = app.UIFigure.Position;
            Position_App(1) = (Position_Screen(3)-Position_App(3))/2;
            Position_App(2) = (Position_Screen(4)-Position_App(4))/2;
            app.UIFigure.Position = Position_App;
            % Set initial edit variables, initial text
            SelecttheinterferencetypeDropDownValueChanged(app);
            app.TextArea.Editable = "off";
            % Initial drawing
            light_intensity2(app);
           
        end

        % Value changed function: SelecttheinterferencetypeDropDown
        function SelecttheinterferencetypeDropDownValueChanged(app, event)
            value = app.SelecttheinterferencetypeDropDown.Value;
            getvalue(app);
            if value == "Double hole interference (horizontally arranged)"
                % coordinate
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "on";
                app.Customizethenumberofholesminimum2maximum6EditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "off";app.LightsourcexcoordinatemEditField.Value = 0;
                app.LightsourceycoordinatemEditField.Enable = "off";app.LightsourceycoordinatemEditField.Value = 0;
                app.Hole1xcoordinatemEditField.Editable = "off";
                app.Hole1ycoordinatemEditField.Editable = "off";
                app.Hole2xcoordinatemEditField.Editable = "off";
                app.Hole2ycoordinatemEditField.Editable = "off";
                app.Hole3xcoordinatemEditField.Enable = "off";
                app.Hole3ycoordinatemEditField.Enable = "off";
                app.Hole4xcoordinatemEditField.Enable = "off";
                app.Hole4ycoordinatemEditField.Enable = "off";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                % text
                app.lightsource001Label.Text = ['light source(' '0' '，' '0' '，' num2str(app.zmEditField.Value) ')'];
                app.Hole1xcoordinatemEditField.Value = app.m*1e6/2;
                app.Hole1ycoordinatemEditField.Value = 0;
                app.Hole2xcoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole2ycoordinatemEditField.Value = 0;
                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel.Text = 'NAN';
                app.NANLabel_2.Text = 'NAN';
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == "Three-hole interference (equilateral triangle arrangement)"
                % coordinate
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "on";
                app.Customizethenumberofholesminimum2maximum6EditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "off";app.LightsourcexcoordinatemEditField.Value = 0;
                app.LightsourceycoordinatemEditField.Enable = "off";app.LightsourceycoordinatemEditField.Value = 0;
                app.Hole1xcoordinatemEditField.Editable = "off";
                app.Hole1ycoordinatemEditField.Editable = "off";
                app.Hole2xcoordinatemEditField.Editable = "off";
                app.Hole2ycoordinatemEditField.Editable = "off";
                app.Hole3xcoordinatemEditField.Editable = "off";app.Hole3xcoordinatemEditField.Enable = "on";
                app.Hole3ycoordinatemEditField.Editable = "off";app.Hole3ycoordinatemEditField.Enable = "on";
                app.Hole4xcoordinatemEditField.Enable = "off";
                app.Hole4ycoordinatemEditField.Enable = "off";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                % text
                app.lightsource001Label.Text = ['light source(' '0' '，' '0' '，' num2str(app.zmEditField.Value) ')'];
                app.Hole1xcoordinatemEditField.Value = 0;
                app.Hole1ycoordinatemEditField.Value = (sqrt(3)*app.m*1e6)/3;
                app.Hole2xcoordinatemEditField.Value = app.m*1e6/2;
                app.Hole2ycoordinatemEditField.Value = -(sqrt(3)*app.m*1e6)/6;
                app.Hole3xcoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole3ycoordinatemEditField.Value = -(sqrt(3)*app.m*1e6)/6;
                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = 'NAN';
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == "Four-hole interference (horizontally arranged)"
                % coordinate
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "on";
                app.Customizethenumberofholesminimum2maximum6EditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "off";app.LightsourcexcoordinatemEditField.Value = 0;
                app.LightsourceycoordinatemEditField.Enable = "off";app.LightsourceycoordinatemEditField.Value = 0;
                app.Hole1xcoordinatemEditField.Editable = "off";
                app.Hole1ycoordinatemEditField.Editable = "off";
                app.Hole2xcoordinatemEditField.Editable = "off";
                app.Hole2ycoordinatemEditField.Editable = "off";
                app.Hole3xcoordinatemEditField.Editable = "off";app.Hole3xcoordinatemEditField.Enable = "on";
                app.Hole3ycoordinatemEditField.Editable = "off";app.Hole3ycoordinatemEditField.Enable = "on";
                app.Hole4xcoordinatemEditField.Editable = "off";app.Hole4xcoordinatemEditField.Enable = "on";
                app.Hole4ycoordinatemEditField.Editable = "off";app.Hole4ycoordinatemEditField.Enable = "on";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                % text
                app.lightsource001Label.Text = ['light source(' '0' '，' '0' '，' num2str(app.zmEditField.Value) ')'];
                app.Hole1xcoordinatemEditField.Value = app.m*3*1e6/2;
                app.Hole1ycoordinatemEditField.Value = 0;
                app.Hole2xcoordinatemEditField.Value = app.m*1e6/2;
                app.Hole2ycoordinatemEditField.Value = 0;
                app.Hole3xcoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole3ycoordinatemEditField.Value = 0;
                app.Hole4xcoordinatemEditField.Value = -app.m*3*1e6/2;
                app.Hole4ycoordinatemEditField.Value = 0;
                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == "Four-hole interference (square arrangement)"
                % coordinate
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "on";
                app.Customizethenumberofholesminimum2maximum6EditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "off";app.LightsourcexcoordinatemEditField.Value = 0;
                app.LightsourceycoordinatemEditField.Enable = "off";app.LightsourceycoordinatemEditField.Value = 0;
                app.Hole1xcoordinatemEditField.Editable = "off";
                app.Hole1ycoordinatemEditField.Editable = "off";
                app.Hole2xcoordinatemEditField.Editable = "off";
                app.Hole2ycoordinatemEditField.Editable = "off";
                app.Hole3xcoordinatemEditField.Editable = "off";app.Hole3xcoordinatemEditField.Enable = "on";
                app.Hole3ycoordinatemEditField.Editable = "off";app.Hole3ycoordinatemEditField.Enable = "on";
                app.Hole4xcoordinatemEditField.Editable = "off";app.Hole4xcoordinatemEditField.Enable = "on";
                app.Hole4ycoordinatemEditField.Editable = "off";app.Hole4ycoordinatemEditField.Enable = "on";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                % text
                app.lightsource001Label.Text = ['light source(' '0' '，' '0' '，' num2str(app.zmEditField.Value) ')'];
                app.Hole1xcoordinatemEditField.Value = app.m*1e6/2;
                app.Hole1ycoordinatemEditField.Value = app.m*1e6/2;
                app.Hole2xcoordinatemEditField.Value = app.m*1e6/2;
                app.Hole2ycoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole3xcoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole3ycoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole4xcoordinatemEditField.Value = -app.m*1e6/2;
                app.Hole4ycoordinatemEditField.Value = app.m*1e6/2;
                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            else
                app.Customizethenumberofholesminimum2maximum6EditField.Enable = "on";
                Customizethenumberofholesminimum2maximum6EditFieldValueChanged(app);
            end
        end

        % Value changed function: 
        % ThedistancebetweentwoholesinnoncustomizedcasemmEditField
        function ThedistancebetweentwoholesinnoncustomizedcasemmEditFieldValueChanged(app, event)
            SelecttheinterferencetypeDropDownValueChanged(app);
            
        end

        % Value changed function: LightsourcexcoordinatemEditField
        function LightsourcexcoordinatemEditFieldValueChanged(app, event)

            app.lightsource001Label.Text = ['light source(' num2str(app.LightsourcexcoordinatemEditField.Value) '，' num2str(app.LightsourceycoordinatemEditField.Value) '，' num2str(app.zmEditField.Value) ')'];
            
        end

        % Value changed function: LightsourceycoordinatemEditField
        function LightsourceycoordinatemEditFieldValueChanged(app, event)

            app.lightsource001Label.Text = ['light source(' num2str(app.LightsourcexcoordinatemEditField.Value) '，' num2str(app.LightsourceycoordinatemEditField.Value) '，' num2str(app.zmEditField.Value) ')'];

        end

        % Value changed function: zmEditField
        function zmEditFieldValueChanged(app, event)
            app.lightsource001Label.Text = ['light source(' num2str(app.LightsourcexcoordinatemEditField.Value) '，' num2str(app.LightsourceycoordinatemEditField.Value) '，' num2str(app.zmEditField.Value) ')'];

        end

        % Button pushed function: PlottinginterferencefringesButton
        function PlottinginterferencefringesButtonPushed(app, event)
            if app.SelecttheinterferencetypeDropDown.Value == "Double hole interference (horizontally arranged)"
                light1(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Three-hole interference (equilateral triangle arrangement)"
                light2(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Four-hole interference (horizontally arranged)"
                light3(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Four-hole interference (square arrangement)"
                light4(app);
            else 
                light5(app);
            end
        end

        % Value changed function: 
        % Customizethenumberofholesminimum2maximum6EditField
        function Customizethenumberofholesminimum2maximum6EditFieldValueChanged(app, event)
            value = app.Customizethenumberofholesminimum2maximum6EditField.Value;
            if value == 2
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "on";app.LightsourcexcoordinatemEditField.Editable = "on";
                app.LightsourceycoordinatemEditField.Enable = "on";app.LightsourceycoordinatemEditField.Editable = "on";
                app.Hole1xcoordinatemEditField.Enable = "on";app.Hole1xcoordinatemEditField.Editable = "on";
                app.Hole1ycoordinatemEditField.Enable = "on";app.Hole1ycoordinatemEditField.Editable = "on";
                app.Hole2xcoordinatemEditField.Enable = "on";app.Hole2xcoordinatemEditField.Editable = "on";
                app.Hole2ycoordinatemEditField.Enable = "on";app.Hole2ycoordinatemEditField.Editable = "on";
                app.Hole3xcoordinatemEditField.Enable = "off";
                app.Hole3ycoordinatemEditField.Enable = "off";
                app.Hole4xcoordinatemEditField.Enable = "off";
                app.Hole4ycoordinatemEditField.Enable = "off";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel.Text = 'NAN';
                app.NANLabel_2.Text = 'NAN';
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == 3
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "on";app.LightsourcexcoordinatemEditField.Editable = "on";
                app.LightsourceycoordinatemEditField.Enable = "on";app.LightsourceycoordinatemEditField.Editable = "on";
                app.Hole1xcoordinatemEditField.Enable = "on";app.Hole1xcoordinatemEditField.Editable = "on";
                app.Hole1ycoordinatemEditField.Enable = "on";app.Hole1ycoordinatemEditField.Editable = "on";
                app.Hole2xcoordinatemEditField.Enable = "on";app.Hole2xcoordinatemEditField.Editable = "on";
                app.Hole2ycoordinatemEditField.Enable = "on";app.Hole2ycoordinatemEditField.Editable = "on";
                app.Hole3xcoordinatemEditField.Enable = "on";app.Hole3xcoordinatemEditField.Editable = "on";
                app.Hole3ycoordinatemEditField.Enable = "on";app.Hole3ycoordinatemEditField.Editable = "on";
                app.Hole4xcoordinatemEditField.Enable = "off";
                app.Hole4ycoordinatemEditField.Enable = "off";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = 'NAN';
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == 4
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "on";app.LightsourcexcoordinatemEditField.Editable = "on";
                app.LightsourceycoordinatemEditField.Enable = "on";app.LightsourceycoordinatemEditField.Editable = "on";
                app.Hole1xcoordinatemEditField.Enable = "on";app.Hole1xcoordinatemEditField.Editable = "on";
                app.Hole1ycoordinatemEditField.Enable = "on";app.Hole1ycoordinatemEditField.Editable = "on";
                app.Hole2xcoordinatemEditField.Enable = "on";app.Hole2xcoordinatemEditField.Editable = "on";
                app.Hole2ycoordinatemEditField.Enable = "on";app.Hole2ycoordinatemEditField.Editable = "on";
                app.Hole3xcoordinatemEditField.Enable = "on";app.Hole3xcoordinatemEditField.Editable = "on";
                app.Hole3ycoordinatemEditField.Enable = "on";app.Hole3ycoordinatemEditField.Editable = "on";
                app.Hole4xcoordinatemEditField.Enable = "on";app.Hole4xcoordinatemEditField.Editable = "on";
                app.Hole4ycoordinatemEditField.Enable = "on";app.Hole4ycoordinatemEditField.Editable = "on";
                app.Hole5xcoordinatemEditField.Enable = "off";
                app.Hole5ycoordinatemEditField.Enable = "off";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_3.Text = 'NAN';
                app.NANLabel_4.Text = 'NAN';

            elseif value == 5
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "on";app.LightsourcexcoordinatemEditField.Editable = "on";
                app.LightsourceycoordinatemEditField.Enable = "on";app.LightsourceycoordinatemEditField.Editable = "on";
                app.Hole1xcoordinatemEditField.Enable = "on";app.Hole1xcoordinatemEditField.Editable = "on";
                app.Hole1ycoordinatemEditField.Enable = "on";app.Hole1ycoordinatemEditField.Editable = "on";
                app.Hole2xcoordinatemEditField.Enable = "on";app.Hole2xcoordinatemEditField.Editable = "on";
                app.Hole2ycoordinatemEditField.Enable = "on";app.Hole2ycoordinatemEditField.Editable = "on";
                app.Hole3xcoordinatemEditField.Enable = "on";app.Hole3xcoordinatemEditField.Editable = "on";
                app.Hole3ycoordinatemEditField.Enable = "on";app.Hole3ycoordinatemEditField.Editable = "on";
                app.Hole4xcoordinatemEditField.Enable = "on";app.Hole4xcoordinatemEditField.Editable = "on";
                app.Hole4ycoordinatemEditField.Enable = "on";app.Hole4ycoordinatemEditField.Editable = "on";
                app.Hole5xcoordinatemEditField.Enable = "on";app.Hole5xcoordinatemEditField.Editable = "on";
                app.Hole5ycoordinatemEditField.Enable = "on";app.Hole5ycoordinatemEditField.Editable = "on";
                app.Hole6xcoordinatemEditField.Enable = "off";
                app.Hole6ycoordinatemEditField.Enable = "off";

                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_3.Text = ['(' num2str(app.Hole5xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole5ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_4.Text = 'NAN';

            else   
                app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Enable = "off";
                app.LightsourcexcoordinatemEditField.Enable = "on";app.LightsourcexcoordinatemEditField.Editable = "on";
                app.LightsourceycoordinatemEditField.Enable = "on";app.LightsourceycoordinatemEditField.Editable = "on";
                app.Hole1xcoordinatemEditField.Enable = "on";app.Hole1xcoordinatemEditField.Editable = "on";
                app.Hole1ycoordinatemEditField.Enable = "on";app.Hole1ycoordinatemEditField.Editable = "on";
                app.Hole2xcoordinatemEditField.Enable = "on";app.Hole2xcoordinatemEditField.Editable = "on";
                app.Hole2ycoordinatemEditField.Enable = "on";app.Hole2ycoordinatemEditField.Editable = "on";
                app.Hole3xcoordinatemEditField.Enable = "on";app.Hole3xcoordinatemEditField.Editable = "on";
                app.Hole3ycoordinatemEditField.Enable = "on";app.Hole3ycoordinatemEditField.Editable = "on";
                app.Hole4xcoordinatemEditField.Enable = "on";app.Hole4xcoordinatemEditField.Editable = "on";
                app.Hole4ycoordinatemEditField.Enable = "on";app.Hole4ycoordinatemEditField.Editable = "on";
                app.Hole5xcoordinatemEditField.Enable = "on";app.Hole5xcoordinatemEditField.Editable = "on";
                app.Hole5ycoordinatemEditField.Enable = "on";app.Hole5ycoordinatemEditField.Editable = "on";
                app.Hole6xcoordinatemEditField.Enable = "on";app.Hole6xcoordinatemEditField.Editable = "on";
                app.Hole6ycoordinatemEditField.Enable = "on";app.Hole6ycoordinatemEditField.Editable = "on";

                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
                app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_3.Text = ['(' num2str(app.Hole5xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole5ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
                app.NANLabel_4.Text = ['(' num2str(app.Hole6xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole6ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            end

        end

        % Value changed function: Hole1xcoordinatemEditField
        function Hole1xcoordinatemEditFieldValueChanged(app, event)
            app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole1ycoordinatemEditField
        function Hole1ycoordinatemEditFieldValueChanged(app, event)
                app.Label_5.Text = ['(' num2str(app.Hole1xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole1ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
        end

        % Value changed function: Hole2xcoordinatemEditField
        function Hole2xcoordinatemEditFieldValueChanged(app, event)

            app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
        end

        % Value changed function: Hole2ycoordinatemEditField
        function Hole2ycoordinatemEditFieldValueChanged(app, event)
            app.Label_7.Text = ['(' num2str(app.Hole2xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole2ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];                
            
        end

        % Value changed function: Hole3xcoordinatemEditField
        function Hole3xcoordinatemEditFieldValueChanged(app, event)
               app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole3ycoordinatemEditField
        function Hole3ycoordinatemEditFieldValueChanged(app, event)
             app.NANLabel.Text = ['(' num2str(app.Hole3xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole3ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole4xcoordinatemEditField
        function Hole4xcoordinatemEditFieldValueChanged(app, event)
            app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole4ycoordinatemEditField
        function Hole4ycoordinatemEditFieldValueChanged(app, event)
            app.NANLabel_2.Text = ['(' num2str(app.Hole4xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole4ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole5xcoordinatemEditField
        function Hole5xcoordinatemEditFieldValueChanged(app, event)
            app.NANLabel_3.Text = ['(' num2str(app.Hole5xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole5ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole5ycoordinatemEditField
        function Hole5ycoordinatemEditFieldValueChanged(app, event)
            app.NANLabel_3.Text = ['(' num2str(app.Hole5xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole5ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole6xcoordinatemEditField
        function Hole6xcoordinatemEditFieldValueChanged(app, event)
            app.NANLabel_4.Text = ['(' num2str(app.Hole6xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole6ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Value changed function: Hole6ycoordinatemEditField
        function Hole6ycoordinatemEditFieldValueChanged(app, event)
           app.NANLabel_4.Text = ['(' num2str(app.Hole6xcoordinatemEditField.Value, '%.3f') '，' num2str(app.Hole6ycoordinatemEditField.Value, '%.3f') '，' '0' ')'];
            
        end

        % Button pushed function: PlottinglightintensitydistributionButton
        function PlottinglightintensitydistributionButtonPushed(app, event)
            if app.SelecttheinterferencetypeDropDown.Value == "Double hole interference (horizontally arranged)"
                light_intensity1(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Three-hole interference (equilateral triangle arrangement)"
                light_intensity2(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Four-hole interference (horizontally arranged)"
                light_intensity3(app);
            elseif app.SelecttheinterferencetypeDropDown.Value == "Four-hole interference (square arrangement)"
                light_intensity4(app);
            else 
                light_intensity5(app);
            end
        end

        % Button pushed function: ClearCoordinateSystemButton
        function ClearCoordinateSystemButtonPushed(app, event)
            cla(app.UIAxes);
        end

        % Button pushed function: ClearCoordinateSystemButton_2
        function ClearCoordinateSystemButton_2Pushed(app, event)
            cla(app.UIAxes_2);
        end

        % Button pushed function: SaveImageAsButton
        function SaveImageAsButtonPushed(app, event)
            saveImage(app, app.UIAxes);
        end

        % Button pushed function: SaveImageAsButton_2
        function SaveImageAsButton_2Pushed(app, event)
            saveImage(app, app.UIAxes_2);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1114 676];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [0 1 1116 676];

            % Create IntroductionTab
            app.IntroductionTab = uitab(app.TabGroup);
            app.IntroductionTab.Title = 'Introduction';

            % Create Panel_2
            app.Panel_2 = uipanel(app.IntroductionTab);
            app.Panel_2.TitlePosition = 'centertop';
            app.Panel_2.Title = 'Introduction to the principle of multi-hole interference simulation experiment';
            app.Panel_2.BackgroundColor = [0.902 0.902 0.902];
            app.Panel_2.FontName = 'Times New Roman';
            app.Panel_2.FontWeight = 'bold';
            app.Panel_2.FontSize = 18;
            app.Panel_2.Position = [1 2 1115 650];

            % Create TextArea
            app.TextArea = uitextarea(app.Panel_2);
            app.TextArea.FontName = 'Times New Roman';
            app.TextArea.FontSize = 15;
            app.TextArea.BackgroundColor = [0.902 0.902 0.902];
            app.TextArea.Position = [1 404 1114 216];
            app.TextArea.Value = {'     In optical experiments, when light passes through several symmetrically arranged pinholes, the light waves emitted by each hole are superimposed on each other to form a unique interference pattern. Due to the symmetrical distribution of the pinholes, the interference fringes also show symmetrical characteristics. On the screen, you can see light and dark stripes, the spacing and brightness of these stripes are affected by factors such as the wavelength of light, the spacing between the pinholes and the conditions of the light source. Symmetrical multi-hole interference not only demonstrates the wave nature of light, but also has application potential in fields such as optical measurement and optical information processing. This simulation experiment can explore the interference fringes and light intensity distribution under symmetrical arrangements such as two-hole interference (horizontal arrangement), three-hole interference (equilateral triangle arrangement), and four-hole interference (horizontal arrangement and square arrangement) by adjusting parameters such as the wavelength λ of monochromatic light, the distance D from the observation screen to the pinhole plane, the distance m between the two pinholes, and the vertical distance L between the light source and the pinhole plane.'; '     This experiment can also select the multi-hole interference experiment in the custom mode, and explore the multi-hole interference situations under various regular or irregular arrangements by customizing the pinhole coordinates (maximum 6, minimum 2), and discover the laws of different interference phenomena. At the same time, the coordinates and amplitude of the light source can be adjusted, and the initial phases of different small holes can be set to enable the experiment to truly simulate various situations under real conditions and achieve precise control and measurement of the light field.'};

            % Create Image
            app.Image = uiimage(app.Panel_2);
            app.Image.Position = [63 -4 332 191];
            app.Image.ImageSource = fullfile(pathToMLAPP, '5.png');

            % Create Image2
            app.Image2 = uiimage(app.Panel_2);
            app.Image2.Position = [63 204 331 170];
            app.Image2.ImageSource = fullfile(pathToMLAPP, '7.png');

            % Create Image3
            app.Image3 = uiimage(app.Panel_2);
            app.Image3.Position = [633 180 357 217];
            app.Image3.ImageSource = fullfile(pathToMLAPP, '6.png');

            % Create SchematicdiagramofthreeholeinterferenceLabel
            app.SchematicdiagramofthreeholeinterferenceLabel = uilabel(app.Panel_2);
            app.SchematicdiagramofthreeholeinterferenceLabel.FontName = 'Times New Roman';
            app.SchematicdiagramofthreeholeinterferenceLabel.FontSize = 14;
            app.SchematicdiagramofthreeholeinterferenceLabel.FontWeight = 'bold';
            app.SchematicdiagramofthreeholeinterferenceLabel.Position = [89 379 278 22];
            app.SchematicdiagramofthreeholeinterferenceLabel.Text = 'Schematic diagram of three-hole interference';

            % Create Label_10
            app.Label_10 = uilabel(app.Panel_2);
            app.Label_10.FontName = 'Times New Roman';
            app.Label_10.FontSize = 14;
            app.Label_10.FontWeight = 'bold';
            app.Label_10.Position = [548 379 490 22];
            app.Label_10.Text = 'Schematic diagram of four-hole interference (square symmetrical arrangement)';

            % Create Label_11
            app.Label_11 = uilabel(app.Panel_2);
            app.Label_11.FontName = 'Times New Roman';
            app.Label_11.FontSize = 14;
            app.Label_11.FontWeight = 'bold';
            app.Label_11.Position = [13 176 433 22];
            app.Label_11.Text = 'Schematic diagram of four-hole interference (horizontal arrangement)';

            % Create TheformulaforinterferencelightintensityofnsmallholesisLabel
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel = uilabel(app.Panel_2);
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel.FontName = 'Times New Roman';
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel.FontSize = 14;
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel.FontWeight = 'bold';
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel.Position = [616 175 381 22];
            app.TheformulaforinterferencelightintensityofnsmallholesisLabel.Text = 'The formula for interference light intensity of n small holes is:';

            % Create Image4
            app.Image4 = uiimage(app.Panel_2);
            app.Image4.Position = [656 14 304 162];
            app.Image4.ImageSource = fullfile(pathToMLAPP, '8.png');

            % Create MultiholeinterferencesimulationexperimentTab
            app.MultiholeinterferencesimulationexperimentTab = uitab(app.TabGroup);
            app.MultiholeinterferencesimulationexperimentTab.Title = 'Multi-hole interference simulation experiment';

            % Create UIAxes
            app.UIAxes = uiaxes(app.MultiholeinterferencesimulationexperimentTab);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontName = 'Times New Roman';
            app.UIAxes.Position = [658 360 434 280];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.MultiholeinterferencesimulationexperimentTab);
            title(app.UIAxes_2, 'Title')
            xlabel(app.UIAxes_2, 'X')
            ylabel(app.UIAxes_2, 'Y')
            zlabel(app.UIAxes_2, 'Z')
            app.UIAxes_2.FontName = 'Times New Roman';
            app.UIAxes_2.Position = [657 52 435 280];

            % Create ExperimentalparametersettingPanel
            app.ExperimentalparametersettingPanel = uipanel(app.MultiholeinterferencesimulationexperimentTab);
            app.ExperimentalparametersettingPanel.Tooltip = {''};
            app.ExperimentalparametersettingPanel.BorderType = 'none';
            app.ExperimentalparametersettingPanel.TitlePosition = 'centertop';
            app.ExperimentalparametersettingPanel.Title = 'Experimental parameter setting';
            app.ExperimentalparametersettingPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ExperimentalparametersettingPanel.FontName = 'Times New Roman';
            app.ExperimentalparametersettingPanel.FontWeight = 'bold';
            app.ExperimentalparametersettingPanel.FontSize = 16;
            app.ExperimentalparametersettingPanel.Position = [1 2 647 649];

            % Create WavelengthnmEditFieldLabel
            app.WavelengthnmEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.WavelengthnmEditFieldLabel.HorizontalAlignment = 'right';
            app.WavelengthnmEditFieldLabel.FontName = 'Times New Roman';
            app.WavelengthnmEditFieldLabel.FontSize = 14;
            app.WavelengthnmEditFieldLabel.Position = [4 593 132 22];
            app.WavelengthnmEditFieldLabel.Text = 'Wavelength: λ（nm）';

            % Create WavelengthnmEditField
            app.WavelengthnmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.WavelengthnmEditField.Limits = [0 Inf];
            app.WavelengthnmEditField.HorizontalAlignment = 'center';
            app.WavelengthnmEditField.FontName = 'Times New Roman';
            app.WavelengthnmEditField.FontSize = 14;
            app.WavelengthnmEditField.Tooltip = {'The input value must be a positive number'};
            app.WavelengthnmEditField.Position = [135 593 70 22];
            app.WavelengthnmEditField.Value = 700;

            % Create DmLabel
            app.DmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.DmLabel.HorizontalAlignment = 'right';
            app.DmLabel.FontName = 'Times New Roman';
            app.DmLabel.FontSize = 14;
            app.DmLabel.Position = [-3 568 478 22];
            app.DmLabel.Text = 'The vertical distance between the observation screen and the double slits: D（m）';

            % Create DmEditField
            app.DmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.DmEditField.Limits = [0 Inf];
            app.DmEditField.HorizontalAlignment = 'center';
            app.DmEditField.FontName = 'Times New Roman';
            app.DmEditField.FontSize = 14;
            app.DmEditField.Tooltip = {'The input value must be a positive number'};
            app.DmEditField.Position = [474 570 71 22];
            app.DmEditField.Value = 20;

            % Create MinimumhorizontalcoordinatexamSpinnerLabel
            app.MinimumhorizontalcoordinatexamSpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.MinimumhorizontalcoordinatexamSpinnerLabel.HorizontalAlignment = 'right';
            app.MinimumhorizontalcoordinatexamSpinnerLabel.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamSpinnerLabel.Position = [25 90 210 22];
            app.MinimumhorizontalcoordinatexamSpinnerLabel.Text = 'Minimum horizontal coordinate: xa（m）';

            % Create MinimumhorizontalcoordinatexamSpinner
            app.MinimumhorizontalcoordinatexamSpinner = uispinner(app.ExperimentalparametersettingPanel);
            app.MinimumhorizontalcoordinatexamSpinner.Step = 0.5;
            app.MinimumhorizontalcoordinatexamSpinner.HorizontalAlignment = 'center';
            app.MinimumhorizontalcoordinatexamSpinner.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamSpinner.Position = [231 90 73 22];
            app.MinimumhorizontalcoordinatexamSpinner.Value = -0.5;

            % Create MinimumverticalcoordinateyamSpinnerLabel
            app.MinimumverticalcoordinateyamSpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.MinimumverticalcoordinateyamSpinnerLabel.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamSpinnerLabel.Position = [31 53 198 22];
            app.MinimumverticalcoordinateyamSpinnerLabel.Text = 'Minimum vertical coordinate: ya（m）';

            % Create MinimumverticalcoordinateyamSpinner
            app.MinimumverticalcoordinateyamSpinner = uispinner(app.ExperimentalparametersettingPanel);
            app.MinimumverticalcoordinateyamSpinner.Step = 0.5;
            app.MinimumverticalcoordinateyamSpinner.HorizontalAlignment = 'center';
            app.MinimumverticalcoordinateyamSpinner.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamSpinner.Position = [231 53 73 22];
            app.MinimumverticalcoordinateyamSpinner.Value = -0.5;

            % Create MaximumhorizontalcoordinatexbmSpinnerLabel
            app.MaximumhorizontalcoordinatexbmSpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.MaximumhorizontalcoordinatexbmSpinnerLabel.HorizontalAlignment = 'right';
            app.MaximumhorizontalcoordinatexbmSpinnerLabel.FontName = 'Times New Roman';
            app.MaximumhorizontalcoordinatexbmSpinnerLabel.Position = [336 90 213 22];
            app.MaximumhorizontalcoordinatexbmSpinnerLabel.Text = 'Maximum horizontal coordinate: xb（m）';

            % Create MaximumhorizontalcoordinatexbmSpinner
            app.MaximumhorizontalcoordinatexbmSpinner = uispinner(app.ExperimentalparametersettingPanel);
            app.MaximumhorizontalcoordinatexbmSpinner.Step = 0.5;
            app.MaximumhorizontalcoordinatexbmSpinner.HorizontalAlignment = 'center';
            app.MaximumhorizontalcoordinatexbmSpinner.FontName = 'Times New Roman';
            app.MaximumhorizontalcoordinatexbmSpinner.Position = [549 90 73 22];
            app.MaximumhorizontalcoordinatexbmSpinner.Value = 0.5;

            % Create MaximumverticalcoordinateybmSpinnerLabel
            app.MaximumverticalcoordinateybmSpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.MaximumverticalcoordinateybmSpinnerLabel.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinnerLabel.Position = [341 54 200 22];
            app.MaximumverticalcoordinateybmSpinnerLabel.Text = 'Maximum vertical coordinate: yb（m）';

            % Create MaximumverticalcoordinateybmSpinner
            app.MaximumverticalcoordinateybmSpinner = uispinner(app.ExperimentalparametersettingPanel);
            app.MaximumverticalcoordinateybmSpinner.Step = 0.5;
            app.MaximumverticalcoordinateybmSpinner.HorizontalAlignment = 'center';
            app.MaximumverticalcoordinateybmSpinner.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinner.Position = [549 53 73 22];
            app.MaximumverticalcoordinateybmSpinner.Value = 0.5;

            % Create NumberofequalpartsinthexaxisdirectionN1SpinnerLabel
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.Position = [8 17 244 22];
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.Text = 'Number of equal parts in the x-axis direction: N1';

            % Create NumberofequalpartsinthexaxisdirectionN1Spinner
            app.NumberofequalpartsinthexaxisdirectionN1Spinner = uispinner(app.ExperimentalparametersettingPanel);
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Step = 100;
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Limits = [0 Inf];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.HorizontalAlignment = 'center';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Position = [251 16 73 22];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Value = 1000;

            % Create NumberofequalpartsintheyaxisdirectionN2SpinnerLabel
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.Position = [325 17 244 22];
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.Text = 'Number of equal parts in the y-axis direction: N2';

            % Create NumberofequalpartsintheyaxisdirectionN2Spinner
            app.NumberofequalpartsintheyaxisdirectionN2Spinner = uispinner(app.ExperimentalparametersettingPanel);
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Step = 100;
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Limits = [0 Inf];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.HorizontalAlignment = 'center';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Position = [568 17 73 22];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Value = 1000;

            % Create Label
            app.Label = uilabel(app.ExperimentalparametersettingPanel);
            app.Label.HorizontalAlignment = 'right';
            app.Label.FontName = 'Times New Roman';
            app.Label.FontSize = 14;
            app.Label.Position = [7 540 158 22];
            app.Label.Text = 'Select the interference type';

            % Create SelecttheinterferencetypeDropDown
            app.SelecttheinterferencetypeDropDown = uidropdown(app.ExperimentalparametersettingPanel);
            app.SelecttheinterferencetypeDropDown.Items = {'Double hole interference (horizontally arranged)', 'Three-hole interference (equilateral triangle arrangement)', 'Four-hole interference (horizontally arranged)', 'Four-hole interference (square arrangement)', 'Customizable multi-hole interference'};
            app.SelecttheinterferencetypeDropDown.ValueChangedFcn = createCallbackFcn(app, @SelecttheinterferencetypeDropDownValueChanged, true);
            app.SelecttheinterferencetypeDropDown.FontName = 'Times New Roman';
            app.SelecttheinterferencetypeDropDown.FontSize = 14;
            app.SelecttheinterferencetypeDropDown.Position = [180 540 365 22];
            app.SelecttheinterferencetypeDropDown.Value = 'Three-hole interference (equilateral triangle arrangement)';

            % Create Label_2
            app.Label_2 = uilabel(app.ExperimentalparametersettingPanel);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.FontName = 'Times New Roman';
            app.Label_2.FontSize = 14;
            app.Label_2.Position = [9 172 155 22];
            app.Label_2.Text = 'Light source amplitude A0';

            % Create LightsourceamplitudeA0Slider
            app.LightsourceamplitudeA0Slider = uislider(app.ExperimentalparametersettingPanel);
            app.LightsourceamplitudeA0Slider.Limits = [1 10];
            app.LightsourceamplitudeA0Slider.FontName = 'Times New Roman';
            app.LightsourceamplitudeA0Slider.FontSize = 14;
            app.LightsourceamplitudeA0Slider.Position = [185 181 150 3];
            app.LightsourceamplitudeA0Slider.Value = 1;

            % Create mmLabel
            app.mmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.mmLabel.HorizontalAlignment = 'right';
            app.mmLabel.FontName = 'Times New Roman';
            app.mmLabel.FontSize = 14;
            app.mmLabel.Position = [1 513 389 22];
            app.mmLabel.Text = 'The distance between two holes in non-customized case: m（μm）';

            % Create ThedistancebetweentwoholesinnoncustomizedcasemmEditField
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Limits = [0 Inf];
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.ValueChangedFcn = createCallbackFcn(app, @ThedistancebetweentwoholesinnoncustomizedcasemmEditFieldValueChanged, true);
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.HorizontalAlignment = 'center';
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.FontName = 'Times New Roman';
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.FontSize = 14;
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Tooltip = {'The input value must be a positive number'};
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Position = [406 513 71 22];
            app.ThedistancebetweentwoholesinnoncustomizedcasemmEditField.Value = 0.2;

            % Create LightsourcexcoordinatemEditFieldLabel
            app.LightsourcexcoordinatemEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.LightsourcexcoordinatemEditFieldLabel.HorizontalAlignment = 'right';
            app.LightsourcexcoordinatemEditFieldLabel.FontName = 'Times New Roman';
            app.LightsourcexcoordinatemEditFieldLabel.FontSize = 14;
            app.LightsourcexcoordinatemEditFieldLabel.Position = [8 457 172 22];
            app.LightsourcexcoordinatemEditFieldLabel.Text = 'Light source x coordinate (m)';

            % Create LightsourcexcoordinatemEditField
            app.LightsourcexcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.LightsourcexcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @LightsourcexcoordinatemEditFieldValueChanged, true);
            app.LightsourcexcoordinatemEditField.HorizontalAlignment = 'center';
            app.LightsourcexcoordinatemEditField.FontName = 'Times New Roman';
            app.LightsourcexcoordinatemEditField.FontSize = 14;
            app.LightsourcexcoordinatemEditField.Tooltip = {''};
            app.LightsourcexcoordinatemEditField.Position = [188 457 70 22];

            % Create LightsourceycoordinatemEditFieldLabel
            app.LightsourceycoordinatemEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.LightsourceycoordinatemEditFieldLabel.HorizontalAlignment = 'right';
            app.LightsourceycoordinatemEditFieldLabel.FontName = 'Times New Roman';
            app.LightsourceycoordinatemEditFieldLabel.FontSize = 14;
            app.LightsourceycoordinatemEditFieldLabel.Position = [330 457 172 22];
            app.LightsourceycoordinatemEditFieldLabel.Text = 'Light source y coordinate (m)';

            % Create LightsourceycoordinatemEditField
            app.LightsourceycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.LightsourceycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @LightsourceycoordinatemEditFieldValueChanged, true);
            app.LightsourceycoordinatemEditField.HorizontalAlignment = 'center';
            app.LightsourceycoordinatemEditField.FontName = 'Times New Roman';
            app.LightsourceycoordinatemEditField.FontSize = 14;
            app.LightsourceycoordinatemEditField.Tooltip = {''};
            app.LightsourceycoordinatemEditField.Position = [514 457 70 22];

            % Create zmLabel
            app.zmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.zmLabel.HorizontalAlignment = 'right';
            app.zmLabel.FontName = 'Times New Roman';
            app.zmLabel.FontSize = 14;
            app.zmLabel.Position = [-2 429 508 22];
            app.zmLabel.Text = 'Light source z coordinate (vertical distance between light source and pinhole plane) (m)';

            % Create zmEditField
            app.zmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.zmEditField.Limits = [-Inf 0];
            app.zmEditField.ValueChangedFcn = createCallbackFcn(app, @zmEditFieldValueChanged, true);
            app.zmEditField.HorizontalAlignment = 'center';
            app.zmEditField.FontName = 'Times New Roman';
            app.zmEditField.FontSize = 14;
            app.zmEditField.Tooltip = {'The input value must be less than 0'};
            app.zmEditField.Position = [517 429 70 22];
            app.zmEditField.Value = -1;

            % Create SetthelightsourcecoordinatesLabel
            app.SetthelightsourcecoordinatesLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.SetthelightsourcecoordinatesLabel.FontName = 'Times New Roman';
            app.SetthelightsourcecoordinatesLabel.FontSize = 14;
            app.SetthelightsourcecoordinatesLabel.Position = [12 484 185 22];
            app.SetthelightsourcecoordinatesLabel.Text = 'Set the light source coordinates:';

            % Create Label_4
            app.Label_4 = uilabel(app.ExperimentalparametersettingPanel);
            app.Label_4.HorizontalAlignment = 'right';
            app.Label_4.FontName = 'Times New Roman';
            app.Label_4.FontSize = 14;
            app.Label_4.Position = [2 400 337 22];
            app.Label_4.Text = 'Customize the number of holes (minimum 2, maximum 6)';

            % Create Customizethenumberofholesminimum2maximum6EditField
            app.Customizethenumberofholesminimum2maximum6EditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Customizethenumberofholesminimum2maximum6EditField.Limits = [2 6];
            app.Customizethenumberofholesminimum2maximum6EditField.ValueChangedFcn = createCallbackFcn(app, @Customizethenumberofholesminimum2maximum6EditFieldValueChanged, true);
            app.Customizethenumberofholesminimum2maximum6EditField.HorizontalAlignment = 'center';
            app.Customizethenumberofholesminimum2maximum6EditField.FontName = 'Times New Roman';
            app.Customizethenumberofholesminimum2maximum6EditField.FontSize = 14;
            app.Customizethenumberofholesminimum2maximum6EditField.Tooltip = {'Enter an integer between 2-6'};
            app.Customizethenumberofholesminimum2maximum6EditField.Position = [352 400 70 22];
            app.Customizethenumberofholesminimum2maximum6EditField.Value = 2;

            % Create xmLabel
            app.xmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel.HorizontalAlignment = 'right';
            app.xmLabel.FontName = 'Times New Roman';
            app.xmLabel.FontSize = 14;
            app.xmLabel.Position = [8 368 144 22];
            app.xmLabel.Text = 'Hole 1x coordinate (μm)';

            % Create Hole1xcoordinatemEditField
            app.Hole1xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole1xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole1xcoordinatemEditFieldValueChanged, true);
            app.Hole1xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole1xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole1xcoordinatemEditField.FontSize = 14;
            app.Hole1xcoordinatemEditField.Tooltip = {''};
            app.Hole1xcoordinatemEditField.Position = [170 368 70 22];

            % Create Hole1ycoordinatemEditFieldLabel
            app.Hole1ycoordinatemEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.Hole1ycoordinatemEditFieldLabel.HorizontalAlignment = 'right';
            app.Hole1ycoordinatemEditFieldLabel.FontName = 'Times New Roman';
            app.Hole1ycoordinatemEditFieldLabel.FontSize = 14;
            app.Hole1ycoordinatemEditFieldLabel.Position = [243 368 144 22];
            app.Hole1ycoordinatemEditFieldLabel.Text = 'Hole 1y coordinate (μm)';

            % Create Hole1ycoordinatemEditField
            app.Hole1ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole1ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole1ycoordinatemEditFieldValueChanged, true);
            app.Hole1ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole1ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole1ycoordinatemEditField.FontSize = 14;
            app.Hole1ycoordinatemEditField.Tooltip = {''};
            app.Hole1ycoordinatemEditField.Position = [406 368 70 22];

            % Create xmLabel_2
            app.xmLabel_2 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_2.HorizontalAlignment = 'right';
            app.xmLabel_2.FontName = 'Times New Roman';
            app.xmLabel_2.FontSize = 14;
            app.xmLabel_2.Position = [8 337 144 22];
            app.xmLabel_2.Text = 'Hole 2x coordinate (μm)';

            % Create Hole2xcoordinatemEditField
            app.Hole2xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole2xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole2xcoordinatemEditFieldValueChanged, true);
            app.Hole2xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole2xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole2xcoordinatemEditField.FontSize = 14;
            app.Hole2xcoordinatemEditField.Tooltip = {''};
            app.Hole2xcoordinatemEditField.Position = [170 337 70 22];

            % Create xmLabel_3
            app.xmLabel_3 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_3.HorizontalAlignment = 'right';
            app.xmLabel_3.FontName = 'Times New Roman';
            app.xmLabel_3.FontSize = 14;
            app.xmLabel_3.Position = [244 337 144 22];
            app.xmLabel_3.Text = 'Hole 2y coordinate (μm)';

            % Create Hole2ycoordinatemEditField
            app.Hole2ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole2ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole2ycoordinatemEditFieldValueChanged, true);
            app.Hole2ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole2ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole2ycoordinatemEditField.FontSize = 14;
            app.Hole2ycoordinatemEditField.Tooltip = {''};
            app.Hole2ycoordinatemEditField.Position = [406 337 70 22];

            % Create xmLabel_4
            app.xmLabel_4 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_4.HorizontalAlignment = 'right';
            app.xmLabel_4.FontName = 'Times New Roman';
            app.xmLabel_4.FontSize = 14;
            app.xmLabel_4.Position = [8 307 144 22];
            app.xmLabel_4.Text = 'Hole 3x coordinate (μm)';

            % Create Hole3xcoordinatemEditField
            app.Hole3xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole3xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole3xcoordinatemEditFieldValueChanged, true);
            app.Hole3xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole3xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole3xcoordinatemEditField.FontSize = 14;
            app.Hole3xcoordinatemEditField.Tooltip = {''};
            app.Hole3xcoordinatemEditField.Position = [169 307 70 22];

            % Create xmLabel_5
            app.xmLabel_5 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_5.HorizontalAlignment = 'right';
            app.xmLabel_5.FontName = 'Times New Roman';
            app.xmLabel_5.FontSize = 14;
            app.xmLabel_5.Position = [244 307 144 22];
            app.xmLabel_5.Text = 'Hole 3y coordinate (μm)';

            % Create Hole3ycoordinatemEditField
            app.Hole3ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole3ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole3ycoordinatemEditFieldValueChanged, true);
            app.Hole3ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole3ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole3ycoordinatemEditField.FontSize = 14;
            app.Hole3ycoordinatemEditField.Tooltip = {''};
            app.Hole3ycoordinatemEditField.Position = [407 307 70 22];

            % Create xmLabel_6
            app.xmLabel_6 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_6.HorizontalAlignment = 'right';
            app.xmLabel_6.FontName = 'Times New Roman';
            app.xmLabel_6.FontSize = 14;
            app.xmLabel_6.Position = [8 275 144 22];
            app.xmLabel_6.Text = 'Hole 4x coordinate (μm)';

            % Create Hole4xcoordinatemEditField
            app.Hole4xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole4xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole4xcoordinatemEditFieldValueChanged, true);
            app.Hole4xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole4xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole4xcoordinatemEditField.FontSize = 14;
            app.Hole4xcoordinatemEditField.Tooltip = {''};
            app.Hole4xcoordinatemEditField.Position = [169 275 70 22];

            % Create Hole4ycoordinatemEditFieldLabel
            app.Hole4ycoordinatemEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.Hole4ycoordinatemEditFieldLabel.HorizontalAlignment = 'right';
            app.Hole4ycoordinatemEditFieldLabel.FontName = 'Times New Roman';
            app.Hole4ycoordinatemEditFieldLabel.FontSize = 14;
            app.Hole4ycoordinatemEditFieldLabel.Position = [244 275 144 22];
            app.Hole4ycoordinatemEditFieldLabel.Text = 'Hole 4y coordinate (μm)';

            % Create Hole4ycoordinatemEditField
            app.Hole4ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole4ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole4ycoordinatemEditFieldValueChanged, true);
            app.Hole4ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole4ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole4ycoordinatemEditField.FontSize = 14;
            app.Hole4ycoordinatemEditField.Tooltip = {''};
            app.Hole4ycoordinatemEditField.Position = [408 275 70 22];

            % Create xmLabel_7
            app.xmLabel_7 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_7.HorizontalAlignment = 'right';
            app.xmLabel_7.FontName = 'Times New Roman';
            app.xmLabel_7.FontSize = 14;
            app.xmLabel_7.Position = [8 240 144 22];
            app.xmLabel_7.Text = 'Hole 5x coordinate (μm)';

            % Create Hole5xcoordinatemEditField
            app.Hole5xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole5xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole5xcoordinatemEditFieldValueChanged, true);
            app.Hole5xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole5xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole5xcoordinatemEditField.FontSize = 14;
            app.Hole5xcoordinatemEditField.Tooltip = {''};
            app.Hole5xcoordinatemEditField.Position = [168 240 70 22];

            % Create ymLabel
            app.ymLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.ymLabel.HorizontalAlignment = 'right';
            app.ymLabel.FontName = 'Times New Roman';
            app.ymLabel.FontSize = 14;
            app.ymLabel.Position = [244 240 144 22];
            app.ymLabel.Text = 'Hole 5y coordinate (μm)';

            % Create Hole5ycoordinatemEditField
            app.Hole5ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole5ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole5ycoordinatemEditFieldValueChanged, true);
            app.Hole5ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole5ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole5ycoordinatemEditField.FontSize = 14;
            app.Hole5ycoordinatemEditField.Tooltip = {''};
            app.Hole5ycoordinatemEditField.Position = [407 240 70 22];

            % Create xmLabel_8
            app.xmLabel_8 = uilabel(app.ExperimentalparametersettingPanel);
            app.xmLabel_8.HorizontalAlignment = 'right';
            app.xmLabel_8.FontName = 'Times New Roman';
            app.xmLabel_8.FontSize = 14;
            app.xmLabel_8.Position = [8 205 144 22];
            app.xmLabel_8.Text = 'Hole 6x coordinate (μm)';

            % Create Hole6xcoordinatemEditField
            app.Hole6xcoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole6xcoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole6xcoordinatemEditFieldValueChanged, true);
            app.Hole6xcoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole6xcoordinatemEditField.FontName = 'Times New Roman';
            app.Hole6xcoordinatemEditField.FontSize = 14;
            app.Hole6xcoordinatemEditField.Tooltip = {''};
            app.Hole6xcoordinatemEditField.Position = [168 205 70 22];

            % Create Hole6ycoordinatemEditFieldLabel
            app.Hole6ycoordinatemEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.Hole6ycoordinatemEditFieldLabel.HorizontalAlignment = 'right';
            app.Hole6ycoordinatemEditFieldLabel.FontName = 'Times New Roman';
            app.Hole6ycoordinatemEditFieldLabel.FontSize = 14;
            app.Hole6ycoordinatemEditFieldLabel.Position = [244 205 144 22];
            app.Hole6ycoordinatemEditFieldLabel.Text = 'Hole 6y coordinate (μm)';

            % Create Hole6ycoordinatemEditField
            app.Hole6ycoordinatemEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Hole6ycoordinatemEditField.ValueChangedFcn = createCallbackFcn(app, @Hole6ycoordinatemEditFieldValueChanged, true);
            app.Hole6ycoordinatemEditField.HorizontalAlignment = 'center';
            app.Hole6ycoordinatemEditField.FontName = 'Times New Roman';
            app.Hole6ycoordinatemEditField.FontSize = 14;
            app.Hole6ycoordinatemEditField.Tooltip = {''};
            app.Hole6ycoordinatemEditField.Position = [406 205 70 22];

            % Create Label_5
            app.Label_5 = uilabel(app.ExperimentalparametersettingPanel);
            app.Label_5.FontName = 'Times New Roman';
            app.Label_5.FontSize = 14;
            app.Label_5.Position = [484 368 164 22];
            app.Label_5.Text = '(0 , 0 , 0)';

            % Create lightsource001Label
            app.lightsource001Label = uilabel(app.ExperimentalparametersettingPanel);
            app.lightsource001Label.FontName = 'Times New Roman';
            app.lightsource001Label.FontSize = 14;
            app.lightsource001Label.Position = [203 484 148 22];
            app.lightsource001Label.Text = 'light source(0 , 0 , -1)';

            % Create Label_7
            app.Label_7 = uilabel(app.ExperimentalparametersettingPanel);
            app.Label_7.FontName = 'Times New Roman';
            app.Label_7.FontSize = 14;
            app.Label_7.Position = [484 336 164 22];
            app.Label_7.Text = '(0 , 0 , 0)';

            % Create NANLabel
            app.NANLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.NANLabel.FontName = 'Times New Roman';
            app.NANLabel.FontSize = 14;
            app.NANLabel.Position = [484 307 164 22];
            app.NANLabel.Text = 'NAN';

            % Create NANLabel_2
            app.NANLabel_2 = uilabel(app.ExperimentalparametersettingPanel);
            app.NANLabel_2.FontName = 'Times New Roman';
            app.NANLabel_2.FontSize = 14;
            app.NANLabel_2.Position = [484 275 164 22];
            app.NANLabel_2.Text = 'NAN';

            % Create NANLabel_3
            app.NANLabel_3 = uilabel(app.ExperimentalparametersettingPanel);
            app.NANLabel_3.FontName = 'Times New Roman';
            app.NANLabel_3.FontSize = 14;
            app.NANLabel_3.Position = [484 240 164 22];
            app.NANLabel_3.Text = 'NAN';

            % Create NANLabel_4
            app.NANLabel_4 = uilabel(app.ExperimentalparametersettingPanel);
            app.NANLabel_4.FontName = 'Times New Roman';
            app.NANLabel_4.FontSize = 14;
            app.NANLabel_4.Position = [484 205 164 22];
            app.NANLabel_4.Text = 'NAN';

            % Create ImageobservationrangesettingLabel
            app.ImageobservationrangesettingLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.ImageobservationrangesettingLabel.FontName = 'Times New Roman';
            app.ImageobservationrangesettingLabel.FontSize = 16;
            app.ImageobservationrangesettingLabel.FontWeight = 'bold';
            app.ImageobservationrangesettingLabel.Position = [218 119 226 22];
            app.ImageobservationrangesettingLabel.Text = 'Image observation range setting';

            % Create PlottinginterferencefringesButton
            app.PlottinginterferencefringesButton = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.PlottinginterferencefringesButton.ButtonPushedFcn = createCallbackFcn(app, @PlottinginterferencefringesButtonPushed, true);
            app.PlottinginterferencefringesButton.FontName = 'Times New Roman';
            app.PlottinginterferencefringesButton.Position = [657 333 150 23];
            app.PlottinginterferencefringesButton.Text = 'Plotting interference fringes';

            % Create ClearCoordinateSystemButton
            app.ClearCoordinateSystemButton = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.ClearCoordinateSystemButton.ButtonPushedFcn = createCallbackFcn(app, @ClearCoordinateSystemButtonPushed, true);
            app.ClearCoordinateSystemButton.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton.Position = [835 333 136 23];
            app.ClearCoordinateSystemButton.Text = 'Clear Coordinate System';

            % Create SaveImageAsButton
            app.SaveImageAsButton = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.SaveImageAsButton.ButtonPushedFcn = createCallbackFcn(app, @SaveImageAsButtonPushed, true);
            app.SaveImageAsButton.FontName = 'Times New Roman';
            app.SaveImageAsButton.Position = [994 333 100 23];
            app.SaveImageAsButton.Text = 'Save Image As';

            % Create PlottinglightintensitydistributionButton
            app.PlottinglightintensitydistributionButton = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.PlottinglightintensitydistributionButton.ButtonPushedFcn = createCallbackFcn(app, @PlottinglightintensitydistributionButtonPushed, true);
            app.PlottinglightintensitydistributionButton.FontName = 'Times New Roman';
            app.PlottinglightintensitydistributionButton.Position = [657 17 181 23];
            app.PlottinglightintensitydistributionButton.Text = 'Plotting light intensity distribution';

            % Create ClearCoordinateSystemButton_2
            app.ClearCoordinateSystemButton_2 = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.ClearCoordinateSystemButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClearCoordinateSystemButton_2Pushed, true);
            app.ClearCoordinateSystemButton_2.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton_2.Position = [854 16 136 26];
            app.ClearCoordinateSystemButton_2.Text = 'Clear Coordinate System';

            % Create SaveImageAsButton_2
            app.SaveImageAsButton_2 = uibutton(app.MultiholeinterferencesimulationexperimentTab, 'push');
            app.SaveImageAsButton_2.ButtonPushedFcn = createCallbackFcn(app, @SaveImageAsButton_2Pushed, true);
            app.SaveImageAsButton_2.FontName = 'Times New Roman';
            app.SaveImageAsButton_2.Position = [1007 17 87 26];
            app.SaveImageAsButton_2.Text = 'Save Image As';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ganshe2_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end