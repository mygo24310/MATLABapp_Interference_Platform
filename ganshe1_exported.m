classdef ganshe1_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        gansheUIFigure                  matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        IntroductionTab                 matlab.ui.container.Tab
        Panel_6                         matlab.ui.container.Panel
        TheformulaforthelightintensityofamovinglightsourceisLabel  matlab.ui.control.Label
        Image5                          matlab.ui.control.Image
        Image4                          matlab.ui.control.Image
        ThelightintensityformulaafteraddingtheglasssheetisLabel  matlab.ui.control.Label
        Image3                          matlab.ui.control.Image
        Image2                          matlab.ui.control.Image
        Image                           matlab.ui.control.Image
        TextArea                        matlab.ui.control.TextArea
        Tab                             matlab.ui.container.Tab
        StripespacingXmLabel            matlab.ui.control.Label
        Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel  matlab.ui.control.Label
        YViewButton                     matlab.ui.control.Button
        XviewButton                     matlab.ui.control.Button
        DViewButton                     matlab.ui.control.Button
        SaveImageAsButton               matlab.ui.control.Button
        ClearCoordinateSystemButton     matlab.ui.control.Button
        SaveImageAsButton_2             matlab.ui.control.Button
        ClearCoordinateSystemButton_2   matlab.ui.control.Button
        PlottinglightintensitydistributionButton  matlab.ui.control.Button
        PlottinginterferencefringesButton  matlab.ui.control.Button
        ObservationrangesettingPanel    matlab.ui.container.Panel
        NumberofequalpartsintheyaxisdirectionN2Spinner  matlab.ui.control.Spinner
        NumberofequalpartsintheyaxisdirectionN2SpinnerLabel  matlab.ui.control.Label
        NumberofequalpartsinthexaxisdirectionN1Spinner  matlab.ui.control.Spinner
        NumberofequalpartsinthexaxisdirectionN1SpinnerLabel  matlab.ui.control.Label
        MaximumverticalcoordinateybmSpinner  matlab.ui.control.Spinner
        MaximumverticalcoordinateybmSpinnerLabel  matlab.ui.control.Label
        MaximumhorizontalcoordinatexbmSpinner  matlab.ui.control.Spinner
        MaximumhorizontalcoordinatexbmLabel  matlab.ui.control.Label
        MinimumverticalcoordinateyamSpinner  matlab.ui.control.Spinner
        MinimumverticalcoordinateyamLabel  matlab.ui.control.Label
        MinimumhorizontalcoordinatexamSpinner  matlab.ui.control.Spinner
        MinimumhorizontalcoordinatexamLabel  matlab.ui.control.Label
        ExperimentalparametersettingPanel  matlab.ui.container.Panel
        ammEditField                    matlab.ui.control.NumericEditField
        amLabel                         matlab.ui.control.Label
        LmmEditField                    matlab.ui.control.NumericEditField
        LmmEditFieldLabel               matlab.ui.control.Label
        WhethertoaddanobstructionbehindthelowerlightpathCheckBox  matlab.ui.control.CheckBox
        Thicknessofobstructionh2mEditField  matlab.ui.control.NumericEditField
        Thicknessofobstructionh2mEditFieldLabel  matlab.ui.control.Label
        Refractiveindexofobstructionn2EditField  matlab.ui.control.NumericEditField
        Refractiveindexofoccludingobjectn2Label  matlab.ui.control.Label
        DmEditField                     matlab.ui.control.NumericEditField
        DmLabel                         matlab.ui.control.Label
        Thicknessofobstructionh1mEditField  matlab.ui.control.NumericEditField
        Thicknessofoccludedobjectsh1mLabel  matlab.ui.control.Label
        Refractiveindexofobstructionn1EditField  matlab.ui.control.NumericEditField
        Refractiveindexofoccludingobjectn1Label  matlab.ui.control.Label
        WhethertoaddanobstructionaftertheupperlightpathCheckBox  matlab.ui.control.CheckBox
        DistancebetweenthedoubleslitsdmmEditField  matlab.ui.control.NumericEditField
        HoledistancedmmLabel            matlab.ui.control.Label
        WavelengthnmEditField           matlab.ui.control.NumericEditField
        wavelengthnmLabel               matlab.ui.control.Label
        UIAxes_2                        matlab.ui.control.UIAxes
        UIAxes                          matlab.ui.control.UIAxes
        SimulationexperimentofdoubleslitinterferenceofcomplexlightTab  matlab.ui.container.Tab
        ObservationrangesettingPanel_2  matlab.ui.container.Panel
        NumberofequalpartsintheyaxisdirectionN2Spinner_2  matlab.ui.control.Spinner
        NumberofequalpartsintheyaxisdirectionN2Spinner_2Label  matlab.ui.control.Label
        NumberofequalpartsinthexaxisdirectionN1Spinner_2  matlab.ui.control.Spinner
        NumberofequalpartsinthexaxisdirectionN1Spinner_2Label  matlab.ui.control.Label
        MaximumverticalcoordinateybmSpinner_2  matlab.ui.control.Spinner
        MaximumverticalcoordinateybmSpinner_2Label  matlab.ui.control.Label
        MaximumhorizontalcoordinatexbmSpinner_2  matlab.ui.control.Spinner
        MaximumhorizontalcoordinatexbmSpinner_2Label  matlab.ui.control.Label
        MinimumverticalcoordinateyamSpinner_2  matlab.ui.control.Spinner
        MinimumverticalcoordinateyamSpinner_2Label  matlab.ui.control.Label
        MinimumhorizontalcoordinatexamSpinner_2  matlab.ui.control.Spinner
        MinimumhorizontalcoordinatexamSpinner_2Label  matlab.ui.control.Label
        ExperimentalparametersettingPanel_2  matlab.ui.container.Panel
        ClearCoordinateSystemButton_4   matlab.ui.control.Button
        SaveImageAsButton_4             matlab.ui.control.Button
        LightintensitydistributioncurveofeachbandButton  matlab.ui.control.Button
        TotallightintensitydistributioncurveButton  matlab.ui.control.Button
        InterferencefringeimageButton   matlab.ui.control.Button
        ClearCoordinateSystemButton_3   matlab.ui.control.Button
        SaveImageAsButton_3             matlab.ui.control.Button
        OverallimagebrightnesstimesSlider  matlab.ui.control.Slider
        Label_4                         matlab.ui.control.Label
        PurplelightintensityratioSlider  matlab.ui.control.Slider
        Label_8                         matlab.ui.control.Label
        Purplelightwavelengthrange380440nmEditField  matlab.ui.control.NumericEditField
        nmLabel_7                       matlab.ui.control.Label
        BluelightintensityratioSlider   matlab.ui.control.Slider
        Label_7                         matlab.ui.control.Label
        Bluelightwavelengthrange440490nmEditField  matlab.ui.control.NumericEditField
        nmLabel_6                       matlab.ui.control.Label
        CyanlightintensityratioSlider   matlab.ui.control.Slider
        Label_6                         matlab.ui.control.Label
        Cyanlightwavelengthrange490510nmEditField  matlab.ui.control.NumericEditField
        nmLabel_5                       matlab.ui.control.Label
        GreenlightintensityratioSlider  matlab.ui.control.Slider
        Label_5                         matlab.ui.control.Label
        Greenlightwavelengthrange510580nmEditField  matlab.ui.control.NumericEditField
        nmLabel_4                       matlab.ui.control.Label
        YellowlightintensityratioSlider  matlab.ui.control.Slider
        Label_3                         matlab.ui.control.Label
        Yellowlightwavelengthrange580600nmEditField  matlab.ui.control.NumericEditField
        nmLabel_3                       matlab.ui.control.Label
        OrangelightintensityratioSlider  matlab.ui.control.Slider
        Label_2                         matlab.ui.control.Label
        Orangelightwavelengthrange600645nmEditField  matlab.ui.control.NumericEditField
        nmLabel_2                       matlab.ui.control.Label
        RedlightintensityratioSlider    matlab.ui.control.Slider
        Label                           matlab.ui.control.Label
        Redlightwavelengthrange645760nmEditField  matlab.ui.control.NumericEditField
        nmLabel                         matlab.ui.control.Label
        DmEditField_2                   matlab.ui.control.NumericEditField
        DmEditField_2Label              matlab.ui.control.Label
        DistancebetweenthedoubleslitsdmmEditField_2  matlab.ui.control.NumericEditField
        HoledistancedmmLabel_2          matlab.ui.control.Label
        UIAxes2_2                       matlab.ui.control.UIAxes
        UIAxes2                         matlab.ui.control.UIAxes
    end

    
    properties (Access = private)
        x;y;xa;xb;ya;yb;I;lambda;D;d;n1;n2;h1;h2;N1;N2;stripe_spacing;
        a;L;a1;a2;xa2;xb2;ya2;yb2;N12;N22;d2;D2;x2;y2;I_2;bright;
        lambda_values;intensity_ratios;% Public variables
    end
    
    methods (Access = private)
        function getvalue(app)
            % tab1
            app.lambda=app.WavelengthnmEditField.Value*1e-9;%Read wavelength
            app.d=app.DistancebetweenthedoubleslitsdmmEditField.Value*1e-3;%Read in hole distance
            app.D=app.DmEditField.Value;%Read in viewing screen distance
            app.n1=app.Refractiveindexofobstructionn1EditField.Value;% Refractive index 1
            app.h1=app.Thicknessofobstructionh1mEditField.Value*1e-6;% Thickness 1
            app.n2=app.Refractiveindexofobstructionn2EditField.Value;% Refractive index 2
            app.h2=app.Thicknessofobstructionh2mEditField.Value*1e-6;% Thickness 2
            app.L=app.LmmEditField.Value*1e-3;% The vertical distance between the light source and the double slits
            app.a=app.ammEditField.Value*1e-3;% The distance between the light source and the perpendicular bisector of the double slit line

            app.xa=app.MinimumhorizontalcoordinatexamSpinner.Value; %Minimum horizontal coordinate value
            app.xb=app.MaximumhorizontalcoordinatexbmSpinner.Value;%Maximum horizontal axis value
            app.ya=app.MinimumverticalcoordinateyamSpinner.Value;%Minimum vertical coordinate value
            app.yb=app.MaximumverticalcoordinateybmSpinner.Value;%Maximum vertical coordinate value
            app.N1=app.NumberofequalpartsinthexaxisdirectionN1Spinner.Value;%Number of equal parts in x direction
            app.N2=app.NumberofequalpartsintheyaxisdirectionN2Spinner.Value;%Number of equal parts in the y direction

            k=2*pi/app.lambda;          %Calculate wave number
            app.x=linspace(app.xa,app.xb,app.N1);   %x-coordinate
            app.y=linspace(app.ya,app.yb,app.N2);   %y-coordinate
            [app.x,app.y]=meshgrid(app.x,app.y);
            r1=sqrt((app.x-app.d/2).^2+app.y.^2+app.D^2);%Optical path 1
            r2=sqrt((app.x+app.d/2).^2+app.y.^2+app.D^2);%Optical path 2
            app.a1=sqrt(app.L^2+(app.d/2-app.a)^2);% The optical path from the light source to a certain hole
            app.a2=sqrt(app.L^2+(app.d/2+app.a)^2);% Optical path from light source to another hole
            I_0=1;  % Assume that the initial light intensity is equal to 1
            % The light intensity formula after the glass sheet is introduced is:
            delta_phi = k * (r2 - r1) + k*(app.a2-app.a1) + k * ((app.n2 - 1) * app.h2 - (app.n1 - 1) * app.h1);
            app.I = 4 * I_0 * cos(delta_phi / 2).^2; % Light intensity calculation
            
        end
        
        function getvalue2(app)
            % tab2
            app.xa2=app.MinimumhorizontalcoordinatexamSpinner_2.Value; %Minimum horizontal coordinate value
            app.xb2=app.MaximumhorizontalcoordinatexbmSpinner_2.Value;%Maximum horizontal axis value
            app.ya2=app.MinimumverticalcoordinateyamSpinner_2.Value;%Minimum vertical coordinate value
            app.yb2=app.MaximumverticalcoordinateybmSpinner_2.Value;%Maximum vertical coordinate value
            app.N12=app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.Value;%Number of equal parts in x direction
            app.N22=app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.Value;%Number of equal parts in the y direction
            
            app.d2=app.DistancebetweenthedoubleslitsdmmEditField_2.Value*1e-3;%Read in hole distance
            app.D2=app.DmEditField_2.Value;%Read in viewing screen distance

            app.x2 = linspace(app.xa2, app.xb2, app.N12);  %x-coordinate
            app.y2 = linspace(app.ya2, app.yb2, app.N22);  %y-coordinate
            [app.x2, app.y2] = meshgrid(app.x2, app.y2);
            app.lambda_values = [
                app.Redlightwavelengthrange645760nmEditField.Value*1e-9;    % red light
                app.Orangelightwavelengthrange600645nmEditField.Value*1e-9; % orange light
                app.Yellowlightwavelengthrange580600nmEditField.Value*1e-9; % yellow light
                app.Greenlightwavelengthrange510580nmEditField.Value*1e-9;  % green light
                app.Cyanlightwavelengthrange490510nmEditField.Value*1e-9;   % cyan light
                app.Bluelightwavelengthrange440490nmEditField.Value*1e-9;   % blue light
                app.Purplelightwavelengthrange380440nmEditField.Value*1e-9; % purple light
            ];

            app.intensity_ratios = [
                app.RedlightintensityratioSlider.Value;    % red light ratio
                app.OrangelightintensityratioSlider.Value; % orange light ratio
                app.YellowlightintensityratioSlider.Value; % yellow light ratio
                app.GreenlightintensityratioSlider.Value;  % green light ratio
                app.CyanlightintensityratioSlider.Value;   % cyan light ratio
                app.BluelightintensityratioSlider.Value;   % blue light ratio
                app.PurplelightintensityratioSlider.Value; % purple light ratio
                ];
        end
        
        function stripeimage (app,~)
            % Draw a stripe image
            getvalue(app);
            gray_image = mat2gray(app.I);% Convert light intensity to grayscale
            color = wavelength_to_rgb_fixed(app, app.lambda * 1e9); % Select the color corresponding to the wavelength
            % Convert grayscale image to color image
            if any(color ~= [0, 0, 0]) % If the color is not black (which means the wavelength is within the visible light range)
                color_image = bsxfun(@times, gray_image, reshape(color, 1, 1, 3));
            else % If the color is black (which means the wavelength is not in the visible light range), set it to black and white
                color_image = repmat(gray_image, [1, 1, 3]);
            end
           imshow(color_image, 'XData', [app.xa app.xb], 'YData', [app.ya app.yb], 'Parent', app.UIAxes);
           xlabel(app.UIAxes,'x (m)','FontSize', 12)
           ylabel(app.UIAxes,'y (m)','FontSize', 12)
           title(app.UIAxes,'double-slit interference fringes','FontSize', 12)
           axis(app.UIAxes,[app.xa, app.xb, app.ya, app.yb]);% Set axis limits
           axis(app.UIAxes, 'on');
           x_ticks = app.xa:0.1:app.xb;
           y_ticks = app.ya:0.1:app.yb;
           % Set the scale of the X and Y axes
           xticks(app.UIAxes,x_ticks);
           yticks(app.UIAxes,y_ticks);
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

        function light_intensity_image(app,~)
            %Plotting light intensity distribution
            getvalue(app);
            surf(app.UIAxes_2, app.x, app.y, app.I, 'EdgeColor', 'none')
            colormap(app.UIAxes_2, jet)  % Using the jet colormap
            colorbar(app.UIAxes_2)  % Displaying a colorbar on UIAxes_2
            xlabel(app.UIAxes_2,'x (m)','FontSize', 12)
            ylabel(app.UIAxes_2,'y (m)','FontSize', 12)
            zlabel(app.UIAxes_2,'Light intensity（cd）','FontSize', 12)
            title(app.UIAxes_2,'Light intensity distribution','FontSize', 12)
            % Set axis limits
            xlim(app.UIAxes_2,[app.xa, app.xb]);
            ylim(app.UIAxes_2,[app.ya, app.yb]);
            zlim(app.UIAxes_2,[0, max(app.I(:))]);  % Set the z-axis range to 0 to the maximum value of the light intensity
            x_ticks = app.xa:0.2:app.xb;
            y_ticks = app.ya:0.2:app.yb;
            % Set the scale of the X and Y axes
            xticks(app.UIAxes_2,x_ticks);
            yticks(app.UIAxes_2,y_ticks);
            
        end

        function display_fringe_spacing(app)
            % Calculate the stripe spacing and display it in the text control
            app.stripe_spacing=app.lambda*app.D/ app.d;
            app.StripespacingXmLabel.Text=['Stripe spacing△X（m）：' num2str(app.stripe_spacing) ' m'];
        end

        function display_moving_distance(app)
            % Calculate the size and direction of stripe movement
            xk = -((app.n2 - 1)*app.h2-(app.n1 - 1)*app.h1 +app.a2-app.a1)*app.D / app.d;
            if xk > 0
                direction = 'up';
            elseif xk < 0
                direction = 'down';
            else
                direction = 'up/down';
            end
            T=xk/app.stripe_spacing;
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.Text = sprintf('The stripes move %s by %.2f m overall, and translate by about %.2f cycles', direction, abs(xk), abs(T));
        end
 
        function updateView(app, viewType)
            % Adjust the view position
            switch viewType
                case 'x'
                    view(app.UIAxes_2, [0.5, 0])  % X-ray view
                case 'y'
                    view(app.UIAxes_2, [90, 0])  % Y-ray view
                case '3D'
                    view(app.UIAxes_2, 3)      % 3D View
            end

        end

        function toggleEditFields1(app)
            % Enable or disable the occluder object refractive index and thickness edit boxes
            if app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.Value
                app.Refractiveindexofobstructionn1EditField.Enable = 'on';
                app.Thicknessofobstructionh1mEditField.Enable = 'on';
            else
                app.Refractiveindexofobstructionn1EditField.Enable = 'off';
                app.Thicknessofobstructionh1mEditField.Enable = 'off';
                app.Refractiveindexofobstructionn1EditField.Value = 1; % default value
                app.Thicknessofobstructionh1mEditField.Value = 0; % default value
            end

            if app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.Value
                app.Refractiveindexofobstructionn2EditField.Enable = 'on';
                app.Thicknessofobstructionh2mEditField.Enable = 'on';
            else
                app.Refractiveindexofobstructionn2EditField.Enable = 'off';
                app.Thicknessofobstructionh2mEditField.Enable = 'off';
                app.Refractiveindexofobstructionn2EditField.Value = 1; % default value
                app.Thicknessofobstructionh2mEditField.Value = 0; % default value
            end
        end

        function clearAxes(app)
            % Clear Coordinate System
            cla(app.UIAxes);
        end

        function saveImage(app, image)
            % Choose the location and format to save the file
            [file, path] = uiputfile({'*.jpg'; '*.png'; '*.bmp'}, 'Save Image As');
            % If the user does not cancel the operation
            if ischar(file)
                % Get the full file path
                fullFileName = fullfile(path, file);
                % Saves the image in the specified UIAxes to the specified path
                exportgraphics(image, fullFileName);
                % Displays a successful save message
                uialert(app.gansheUIFigure, 'Image saved successfully!', 'success');
            else
                % If the user cancels the save
                uialert(app.gansheUIFigure, 'Operation Cancelled!', 'tips');
            end
        end

        function Composite_light(app)
            % Draw composite light fringe diagram
            getvalue2(app);% Get data
            r12 = sqrt((app.x2 - app.d2 / 2).^2 + app.y2.^2 + app.D2^2); % Optical path 1
            r22 = sqrt((app.x2 + app.d2 / 2).^2 + app.y2.^2 + app.D2^2); % Optical path 2
            I_0 = 1;  % Initial light intensity
            total_I = zeros(app.N12,app.N22,3); % Initialize the total light intensity matrix
            sI = zeros(app.N12,app.N22,3); % Each wavelength corresponds to the light intensity matrix

            for i = 1:length(app.lambda_values)
                % Get each wavelength and calculate the corresponding light intensity
                lambda1 = app.lambda_values(i); % wavelength
                k = 2 * pi / lambda1;            % Calculate wave number
                % Calculate the phase difference
                delta_phi = k * (r22 - r12);
                % Light intensity of a single wavelength
                I2 = 4 * I_0 * cos(delta_phi / 2).^2;
                color = wavelength_to_rgb_fixed(app, app.lambda_values(i) * 1e9); % Get Color
                sI(:,:,1) = I2 .* color(1)* app.intensity_ratios(i);
                sI(:,:,2) = I2 .* color(2)* app.intensity_ratios(i);
                sI(:,:,3) = I2 .* color(3)* app.intensity_ratios(i);
                total_I = total_I + sI;
                sI=[];

            end
            app.bright = app.OverallimagebrightnesstimesSlider.Value;% Adjust brightness
            app.I_2 = (app.bright*total_I)/max(max(max(total_I)));
                 
            % Display the final polychromatic light fringe image
            imagesc(app.I_2, 'XData', [app.xa2 app.xb2], 'YData', [app.ya2 app.yb2], 'Parent', app.UIAxes2);
            xlabel(app.UIAxes2, 'x (m)', 'FontSize', 12);
            ylabel(app.UIAxes2, 'y (m)', 'FontSize', 12);
            title(app.UIAxes2, 'Complex light interference fringe image', 'FontSize', 12);
            axis(app.UIAxes2, [app.xa2, app.xb2, app.ya2, app.yb2]);  % Set axis limits
            axis(app.UIAxes2, 'on');
            xticks(app.UIAxes2, app.xa2:0.1:app.xb2);
            yticks(app.UIAxes2, app.ya2:0.1:app.yb2);

        end
        
        function Composite_light_intensity1(app)
            getvalue2(app); % value
            Composite_light(app);% Stripe Image
            % Convert 3D RGB image to 2D grayscale image
            I_gray = mean(app.I_2./app.bright, 3); % Find the average value of the three RGB channels
            % Sum the light intensity along the y direction to obtain the light intensity distribution in the x direction
            I_x = sum(I_gray, 1);
            I_x = I_x/max(I_x);
            % Plot the total light intensity distribution in the x direction
            plot(app.UIAxes2_2, linspace(app.xa2, app.xb2, length(I_x)), I_x);
            xlabel(app.UIAxes2_2, 'x (m)', 'FontSize', 12);
            ylabel(app.UIAxes2_2, 'Light intensity（cd）', 'FontSize', 12);
            title(app.UIAxes2_2, 'Total light intensity distribution curve in x direction (normalized)', 'FontSize', 12);
            xticks(app.UIAxes2_2, app.xa2:0.1:app.xb2);
        end
        
        function Composite_light_intensity2(app)
            getvalue2(app); %get value
            Composite_light(app);% Stripe Image
            % Color Correspondence
            colors = [
                1, 0, 0;    % red
                1, 0.64, 0; % orange
                1, 1, 0;    % yellow
                0, 1, 0;    % green
                0, 1, 1;    % cyan
                0, 0, 1;    % blue
                0.5, 0, 0.5 % purple
                ];
            % Clear the coordinate system
            cla(app.UIAxes2_2);
            hold(app.UIAxes2_2, 'on');
            x_values = linspace(app.xa2, app.xb2, app.N12); % X-axis range

            % Traverse the light intensity of each band and plot them separately
            for i = 1:length(app.lambda_values)
                if app.intensity_ratios(i) > 0
                    % Calculate the light intensity distribution at the corresponding wavelength
                    k = 2 * pi / app.lambda_values(i);
                    r12 = sqrt((app.x2 - app.d2 / 2).^2 + app.y2.^2 + app.D2^2);
                    r22 = sqrt((app.x2 + app.d2 / 2).^2 + app.y2.^2 + app.D2^2);
                    delta_phi = k * (r22 - r12);
                    I3 = 4 * cos(delta_phi / 2).^2;
                    % Obtain the light intensity distribution along the y-direction
                    I_x2 = sum(I3, 1) * app.intensity_ratios(i);
                    % Draw the light intensity distribution of the current wavelength
                    plot(app.UIAxes2_2, x_values, I_x2, 'Color', colors(i, :), 'LineWidth', 1.5);
                end
            end

            % Set image properties
            xlabel(app.UIAxes2_2, 'x(m)', 'FontSize', 12);
            ylabel(app.UIAxes2_2, 'light intensity（cd）', 'FontSize', 12);
            title(app.UIAxes2_2, 'The intensity distribution corresponding to the seven colored light', 'FontSize', 12);
            xticks(app.UIAxes2_2, app.xa2:0.1:app.xb2);
            hold(app.UIAxes2_2, 'off');
        end

      
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % Center the app interface
            Position_Screen = get(0,'ScreenSize');%Get screen size
            Position_App = app.gansheUIFigure.Position;
            Position_App(1) = (Position_Screen(3)-Position_App(3))/2;
            Position_App(2) = (Position_Screen(4)-Position_App(4))/2;
            app.gansheUIFigure.Position = Position_App;
            % Setting occlusion parameter initialization is non editable
            app.Refractiveindexofobstructionn1EditField.Enable="off";
            app.Thicknessofobstructionh1mEditField.Enable="off";
            app.Refractiveindexofobstructionn2EditField.Enable="off";
            app.Thicknessofobstructionh2mEditField.Enable="off";
            % Initial drawing
            stripeimage(app);
            light_intensity_image(app);
            display_fringe_spacing(app);
            Composite_light_intensity1(app);
            
        end

        % Value changed function: 
        % WhethertoaddanobstructionaftertheupperlightpathCheckBox
        function WhethertoaddanobstructionaftertheupperlightpathCheckBoxValueChanged(app, event)
            toggleEditFields1(app);
        end

        % Value changed function: MinimumhorizontalcoordinatexamSpinner
        function MinimumhorizontalcoordinatexamSpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Value changed function: MaximumhorizontalcoordinatexbmSpinner
        function MaximumhorizontalcoordinatexbmSpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Value changed function: MinimumverticalcoordinateyamSpinner
        function MinimumverticalcoordinateyamSpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Value changed function: MaximumverticalcoordinateybmSpinner
        function MaximumverticalcoordinateybmSpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Value changed function: 
        % NumberofequalpartsinthexaxisdirectionN1Spinner
        function NumberofequalpartsinthexaxisdirectionN1SpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Value changed function: 
        % NumberofequalpartsintheyaxisdirectionN2Spinner
        function NumberofequalpartsintheyaxisdirectionN2SpinnerValueChanging(app, event)
            stripeimage(app,event); 
            light_intensity_image(app,event);
        end

        % Button pushed function: PlottinginterferencefringesButton
        function PlottinginterferencefringesButtonPushed(app, event)
            stripeimage(app,event); 
            display_fringe_spacing(app);
            display_moving_distance(app);
        end

        % Button pushed function: ClearCoordinateSystemButton
        function Button_2Pushed(app, event)
            clearAxes(app);
        end

        % Button pushed function: SaveImageAsButton
        function Button_3Pushed(app, event)
            saveImage(app, app.UIAxes);
        end

        % Value changed function: 
        % WhethertoaddanobstructionbehindthelowerlightpathCheckBox
        function WhethertoaddanobstructionbehindthelowerlightpathCheckBoxValueChanged(app, event)
            toggleEditFields1(app);
            
        end

        % Button pushed function: PlottinglightintensitydistributionButton
        function PlottinglightintensitydistributionButtonPushed(app, event)
            light_intensity_image(app);
            display_fringe_spacing(app);
            display_moving_distance(app);
        end

        % Button pushed function: ClearCoordinateSystemButton_2
        function ClearCoordinateSystemButton_2Pushed(app, event)
            cla(app.UIAxes_2);
        end

        % Button pushed function: SaveImageAsButton_2
        function SaveImageAsButton_2Pushed(app, event)
            saveImage(app,app.UIAxes_2);
        end

        % Button pushed function: DViewButton
        function DViewButtonPushed(app, event)
            updateView(app, '3D');
        end

        % Button pushed function: XviewButton
        function XviewButtonPushed(app, event)
            updateView(app, 'x');
        end

        % Button pushed function: YViewButton
        function YViewButtonPushed(app, event)
            updateView(app, 'y');
        end

        % Button pushed function: InterferencefringeimageButton
        function InterferencefringeimageButtonPushed(app, event)
            Composite_light(app);
        end

        % Button pushed function: 
        % TotallightintensitydistributioncurveButton
        function TotallightintensitydistributioncurveButtonPushed(app, event)
            Composite_light_intensity1(app);
        end

        % Button pushed function: 
        % LightintensitydistributioncurveofeachbandButton
        function LightintensitydistributioncurveofeachbandButtonPushed(app, event)
            Composite_light_intensity2(app);
        end

        % Button pushed function: SaveImageAsButton_3
        function SaveImageAsButton_3Pushed(app, event)
            saveImage(app,app.UIAxes2);
        end

        % Button pushed function: SaveImageAsButton_4
        function SaveImageAsButton_4Pushed(app, event)
            saveImage(app,app.UIAxes2_2);
        end

        % Button pushed function: ClearCoordinateSystemButton_3
        function ClearCoordinateSystemButton_3Pushed(app, event)
            cla(app.UIAxes2);
        end

        % Button pushed function: ClearCoordinateSystemButton_4
        function ClearCoordinateSystemButton_4Pushed(app, event)
            cla(app.UIAxes2_2);
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create gansheUIFigure and hide until all components are created
            app.gansheUIFigure = uifigure('Visible', 'off');
            app.gansheUIFigure.Position = [100 100 1066 673];
            app.gansheUIFigure.Name = 'ganshe';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.gansheUIFigure);
            app.TabGroup.Position = [0 -1 1066 675];

            % Create IntroductionTab
            app.IntroductionTab = uitab(app.TabGroup);
            app.IntroductionTab.Title = 'Introduction';

            % Create Panel_6
            app.Panel_6 = uipanel(app.IntroductionTab);
            app.Panel_6.TitlePosition = 'centertop';
            app.Panel_6.Title = 'Introduction to the principle of Young''s double-slit interference simulation experiment';
            app.Panel_6.BackgroundColor = [0.902 0.902 0.902];
            app.Panel_6.FontName = 'Times New Roman';
            app.Panel_6.FontWeight = 'bold';
            app.Panel_6.FontSize = 18;
            app.Panel_6.Position = [2 1 1062 650];

            % Create TextArea
            app.TextArea = uitextarea(app.Panel_6);
            app.TextArea.FontName = 'Times New Roman';
            app.TextArea.FontSize = 15;
            app.TextArea.BackgroundColor = [0.902 0.902 0.902];
            app.TextArea.Position = [1 426 1061 197];
            app.TextArea.Value = {'     Young''s double-slit interference theory is an important theory in the field of optics, which demonstrates the wave nature of light. When a beam of monochromatic light passes through a slit and then passes through a set of closely spaced double slits (S1 and S2), the light wave will generate secondary wave sources at the double slits. The light waves emitted by these secondary wave sources meet and interfere on the screen, forming interference fringes of light and dark. This experimental platform can display different interference fringe images and light intensity distribution images by adjusting the wavelength λ of monochromatic light, the distance d between the double slits, the distance D from the double slits to the screen, the distance L between the light source and the double slits, the distance a of the light source moving up and down, and inserting a glass sheet with a refractive index of n and a thickness of h.'; '     In the polychromatic light interference experiment, white light or light of multiple different wavelengths passes through the double slits at the same time, and the interference pattern becomes more complicated. Because the interference fringes generated by light of different wavelengths are in different positions, colorful interference fringes are finally formed on the screen. This phenomenon reflects the phase difference of light of different wavelengths and the dispersion characteristics of light. This experiment can generate rich polychromatic light interference patterns and light intensity distribution curves by adjusting the wavelengths of 7 kinds of visible light and their respective light intensity ratios.'};

            % Create Image
            app.Image = uiimage(app.Panel_6);
            app.Image.Position = [-14 219 398 200];
            app.Image.ImageSource = fullfile(pathToMLAPP, '1.png');

            % Create Image2
            app.Image2 = uiimage(app.Panel_6);
            app.Image2.Position = [20 9 333 194];
            app.Image2.ImageSource = fullfile(pathToMLAPP, '2.png');

            % Create Image3
            app.Image3 = uiimage(app.Panel_6);
            app.Image3.Position = [495 241 515 176];
            app.Image3.ImageSource = fullfile(pathToMLAPP, '1.gif');

            % Create ThelightintensityformulaafteraddingtheglasssheetisLabel
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel = uilabel(app.Panel_6);
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel.FontName = 'Times New Roman';
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel.FontSize = 16;
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel.FontWeight = 'bold';
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel.Position = [376 221 404 22];
            app.ThelightintensityformulaafteraddingtheglasssheetisLabel.Text = 'The light intensity formula after adding the glass sheet is:';

            % Create Image4
            app.Image4 = uiimage(app.Panel_6);
            app.Image4.Position = [525 125 439 97];
            app.Image4.ImageSource = fullfile(pathToMLAPP, '3.png');

            % Create Image5
            app.Image5 = uiimage(app.Panel_6);
            app.Image5.Position = [525 12 438 90];
            app.Image5.ImageSource = fullfile(pathToMLAPP, '4.png');

            % Create TheformulaforthelightintensityofamovinglightsourceisLabel
            app.TheformulaforthelightintensityofamovinglightsourceisLabel = uilabel(app.Panel_6);
            app.TheformulaforthelightintensityofamovinglightsourceisLabel.FontName = 'Times New Roman';
            app.TheformulaforthelightintensityofamovinglightsourceisLabel.FontSize = 16;
            app.TheformulaforthelightintensityofamovinglightsourceisLabel.FontWeight = 'bold';
            app.TheformulaforthelightintensityofamovinglightsourceisLabel.Position = [372 105 433 22];
            app.TheformulaforthelightintensityofamovinglightsourceisLabel.Text = 'The formula for the light intensity of a moving light source is:';

            % Create Tab
            app.Tab = uitab(app.TabGroup);
            app.Tab.Title = 'Young''s double-slit interference simulation experiment ';

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tab);
            title(app.UIAxes, 'Title')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Y')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontName = 'Times New Roman';
            app.UIAxes.FontSize = 12;
            app.UIAxes.Position = [22 321 490 320];

            % Create UIAxes_2
            app.UIAxes_2 = uiaxes(app.Tab);
            title(app.UIAxes_2, 'Title')
            xlabel(app.UIAxes_2, 'X')
            ylabel(app.UIAxes_2, 'Y')
            zlabel(app.UIAxes_2, 'Z')
            app.UIAxes_2.FontName = 'Times New Roman';
            app.UIAxes_2.FontSize = 12;
            app.UIAxes_2.Position = [527 319 406 319];

            % Create ExperimentalparametersettingPanel
            app.ExperimentalparametersettingPanel = uipanel(app.Tab);
            app.ExperimentalparametersettingPanel.Tooltip = {''};
            app.ExperimentalparametersettingPanel.BorderType = 'none';
            app.ExperimentalparametersettingPanel.TitlePosition = 'centertop';
            app.ExperimentalparametersettingPanel.Title = 'Experimental parameter setting';
            app.ExperimentalparametersettingPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ExperimentalparametersettingPanel.FontName = 'Times New Roman';
            app.ExperimentalparametersettingPanel.FontWeight = 'bold';
            app.ExperimentalparametersettingPanel.FontSize = 16;
            app.ExperimentalparametersettingPanel.Position = [1 6 681 255];

            % Create wavelengthnmLabel
            app.wavelengthnmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.wavelengthnmLabel.HorizontalAlignment = 'right';
            app.wavelengthnmLabel.FontName = 'Times New Roman';
            app.wavelengthnmLabel.FontSize = 14;
            app.wavelengthnmLabel.Position = [-1 196 132 22];
            app.wavelengthnmLabel.Text = 'Wavelength: λ（nm）';

            % Create WavelengthnmEditField
            app.WavelengthnmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.WavelengthnmEditField.Limits = [0 Inf];
            app.WavelengthnmEditField.HorizontalAlignment = 'center';
            app.WavelengthnmEditField.FontName = 'Times New Roman';
            app.WavelengthnmEditField.FontSize = 14;
            app.WavelengthnmEditField.Tooltip = {'The input value must be a positive number'};
            app.WavelengthnmEditField.Position = [136 196 70 22];
            app.WavelengthnmEditField.Value = 300;

            % Create HoledistancedmmLabel
            app.HoledistancedmmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.HoledistancedmmLabel.HorizontalAlignment = 'right';
            app.HoledistancedmmLabel.FontName = 'Times New Roman';
            app.HoledistancedmmLabel.FontSize = 14;
            app.HoledistancedmmLabel.Position = [290 196 260 22];
            app.HoledistancedmmLabel.Text = 'Distance between the double slits: d（mm）';

            % Create DistancebetweenthedoubleslitsdmmEditField
            app.DistancebetweenthedoubleslitsdmmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.DistancebetweenthedoubleslitsdmmEditField.Limits = [0 Inf];
            app.DistancebetweenthedoubleslitsdmmEditField.HorizontalAlignment = 'center';
            app.DistancebetweenthedoubleslitsdmmEditField.FontName = 'Times New Roman';
            app.DistancebetweenthedoubleslitsdmmEditField.FontSize = 14;
            app.DistancebetweenthedoubleslitsdmmEditField.Tooltip = {'The input value must be a positive number'};
            app.DistancebetweenthedoubleslitsdmmEditField.Position = [549 195 70 22];
            app.DistancebetweenthedoubleslitsdmmEditField.Value = 0.05;

            % Create WhethertoaddanobstructionaftertheupperlightpathCheckBox
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox = uicheckbox(app.ExperimentalparametersettingPanel);
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.ValueChangedFcn = createCallbackFcn(app, @WhethertoaddanobstructionaftertheupperlightpathCheckBoxValueChanged, true);
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.Text = 'Whether to add an obstruction after the upper light path';
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.FontName = 'Times New Roman';
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.FontSize = 14;
            app.WhethertoaddanobstructionaftertheupperlightpathCheckBox.Position = [5 80 333 22];

            % Create Refractiveindexofoccludingobjectn1Label
            app.Refractiveindexofoccludingobjectn1Label = uilabel(app.ExperimentalparametersettingPanel);
            app.Refractiveindexofoccludingobjectn1Label.FontName = 'Times New Roman';
            app.Refractiveindexofoccludingobjectn1Label.FontSize = 14;
            app.Refractiveindexofoccludingobjectn1Label.Position = [18 52 202 22];
            app.Refractiveindexofoccludingobjectn1Label.Text = 'Refractive index of obstruction: n1';

            % Create Refractiveindexofobstructionn1EditField
            app.Refractiveindexofobstructionn1EditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Refractiveindexofobstructionn1EditField.Limits = [0 Inf];
            app.Refractiveindexofobstructionn1EditField.HorizontalAlignment = 'center';
            app.Refractiveindexofobstructionn1EditField.FontName = 'Times New Roman';
            app.Refractiveindexofobstructionn1EditField.FontSize = 14;
            app.Refractiveindexofobstructionn1EditField.Tooltip = {'The input value must be a positive number'};
            app.Refractiveindexofobstructionn1EditField.Position = [241 51 62 22];
            app.Refractiveindexofobstructionn1EditField.Value = 1;

            % Create Thicknessofoccludedobjectsh1mLabel
            app.Thicknessofoccludedobjectsh1mLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.Thicknessofoccludedobjectsh1mLabel.FontName = 'Times New Roman';
            app.Thicknessofoccludedobjectsh1mLabel.FontSize = 14;
            app.Thicknessofoccludedobjectsh1mLabel.Position = [18 22 212 22];
            app.Thicknessofoccludedobjectsh1mLabel.Text = 'Thickness of obstruction: h1（μm）';

            % Create Thicknessofobstructionh1mEditField
            app.Thicknessofobstructionh1mEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Thicknessofobstructionh1mEditField.Limits = [0 Inf];
            app.Thicknessofobstructionh1mEditField.HorizontalAlignment = 'center';
            app.Thicknessofobstructionh1mEditField.FontName = 'Times New Roman';
            app.Thicknessofobstructionh1mEditField.FontSize = 14;
            app.Thicknessofobstructionh1mEditField.Tooltip = {'The input value must be a positive number'};
            app.Thicknessofobstructionh1mEditField.Position = [242 21 60 22];

            % Create DmLabel
            app.DmLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.DmLabel.HorizontalAlignment = 'right';
            app.DmLabel.FontName = 'Times New Roman';
            app.DmLabel.FontSize = 14;
            app.DmLabel.Position = [-9 169 478 22];
            app.DmLabel.Text = 'The vertical distance between the observation screen and the double slits: D（m）';

            % Create DmEditField
            app.DmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.DmEditField.Limits = [0 Inf];
            app.DmEditField.HorizontalAlignment = 'center';
            app.DmEditField.FontName = 'Times New Roman';
            app.DmEditField.FontSize = 14;
            app.DmEditField.Tooltip = {'The input value must be a positive number'};
            app.DmEditField.Position = [468 171 71 22];
            app.DmEditField.Value = 20;

            % Create Refractiveindexofoccludingobjectn2Label
            app.Refractiveindexofoccludingobjectn2Label = uilabel(app.ExperimentalparametersettingPanel);
            app.Refractiveindexofoccludingobjectn2Label.FontName = 'Times New Roman';
            app.Refractiveindexofoccludingobjectn2Label.FontSize = 14;
            app.Refractiveindexofoccludingobjectn2Label.Position = [347 52 202 22];
            app.Refractiveindexofoccludingobjectn2Label.Text = 'Refractive index of obstruction: n2';

            % Create Refractiveindexofobstructionn2EditField
            app.Refractiveindexofobstructionn2EditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Refractiveindexofobstructionn2EditField.Limits = [0 Inf];
            app.Refractiveindexofobstructionn2EditField.HorizontalAlignment = 'center';
            app.Refractiveindexofobstructionn2EditField.FontName = 'Times New Roman';
            app.Refractiveindexofobstructionn2EditField.FontSize = 14;
            app.Refractiveindexofobstructionn2EditField.Tooltip = {'The input value must be a positive number'};
            app.Refractiveindexofobstructionn2EditField.Position = [581 51 62 22];
            app.Refractiveindexofobstructionn2EditField.Value = 1;

            % Create Thicknessofobstructionh2mEditFieldLabel
            app.Thicknessofobstructionh2mEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.Thicknessofobstructionh2mEditFieldLabel.FontName = 'Times New Roman';
            app.Thicknessofobstructionh2mEditFieldLabel.FontSize = 14;
            app.Thicknessofobstructionh2mEditFieldLabel.Position = [346 22 212 22];
            app.Thicknessofobstructionh2mEditFieldLabel.Text = 'Thickness of obstruction: h2（μm）';

            % Create Thicknessofobstructionh2mEditField
            app.Thicknessofobstructionh2mEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.Thicknessofobstructionh2mEditField.Limits = [0 Inf];
            app.Thicknessofobstructionh2mEditField.HorizontalAlignment = 'center';
            app.Thicknessofobstructionh2mEditField.FontSize = 14;
            app.Thicknessofobstructionh2mEditField.Tooltip = {'The input value must be a positive number'};
            app.Thicknessofobstructionh2mEditField.Position = [581 22 60 22];

            % Create WhethertoaddanobstructionbehindthelowerlightpathCheckBox
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox = uicheckbox(app.ExperimentalparametersettingPanel);
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.ValueChangedFcn = createCallbackFcn(app, @WhethertoaddanobstructionbehindthelowerlightpathCheckBoxValueChanged, true);
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.Text = 'Whether to add an obstruction behind the lower light path';
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.FontName = 'Times New Roman';
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.FontSize = 14;
            app.WhethertoaddanobstructionbehindthelowerlightpathCheckBox.Position = [337 80 351 22];

            % Create LmmEditFieldLabel
            app.LmmEditFieldLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.LmmEditFieldLabel.HorizontalAlignment = 'right';
            app.LmmEditFieldLabel.FontName = 'Times New Roman';
            app.LmmEditFieldLabel.FontSize = 14;
            app.LmmEditFieldLabel.Position = [-7 141 447 22];
            app.LmmEditFieldLabel.Text = 'The vertical distance between the light source and the double slits: L（mm）';

            % Create LmmEditField
            app.LmmEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.LmmEditField.Limits = [0 Inf];
            app.LmmEditField.HorizontalAlignment = 'center';
            app.LmmEditField.FontName = 'Times New Roman';
            app.LmmEditField.FontSize = 14;
            app.LmmEditField.Tooltip = {'The input value must be a positive number'};
            app.LmmEditField.Position = [442 141 70 22];
            app.LmmEditField.Value = 1;

            % Create amLabel
            app.amLabel = uilabel(app.ExperimentalparametersettingPanel);
            app.amLabel.HorizontalAlignment = 'right';
            app.amLabel.FontName = 'Times New Roman';
            app.amLabel.FontSize = 14;
            app.amLabel.Position = [-12 113 587 22];
            app.amLabel.Text = 'The distance between the light source and the perpendicular bisector of the double slit line: a（mm）';

            % Create ammEditField
            app.ammEditField = uieditfield(app.ExperimentalparametersettingPanel, 'numeric');
            app.ammEditField.HorizontalAlignment = 'center';
            app.ammEditField.FontName = 'Times New Roman';
            app.ammEditField.FontSize = 14;
            app.ammEditField.Tooltip = {''};
            app.ammEditField.Position = [577 113 70 22];

            % Create ObservationrangesettingPanel
            app.ObservationrangesettingPanel = uipanel(app.Tab);
            app.ObservationrangesettingPanel.Tooltip = {''};
            app.ObservationrangesettingPanel.BorderType = 'none';
            app.ObservationrangesettingPanel.TitlePosition = 'centertop';
            app.ObservationrangesettingPanel.Title = 'Observation range setting';
            app.ObservationrangesettingPanel.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ObservationrangesettingPanel.FontName = 'Times New Roman';
            app.ObservationrangesettingPanel.FontWeight = 'bold';
            app.ObservationrangesettingPanel.FontSize = 16;
            app.ObservationrangesettingPanel.Position = [681 5 383 256];

            % Create MinimumhorizontalcoordinatexamLabel
            app.MinimumhorizontalcoordinatexamLabel = uilabel(app.ObservationrangesettingPanel);
            app.MinimumhorizontalcoordinatexamLabel.HorizontalAlignment = 'right';
            app.MinimumhorizontalcoordinatexamLabel.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamLabel.FontSize = 14;
            app.MinimumhorizontalcoordinatexamLabel.Position = [34 192 245 22];
            app.MinimumhorizontalcoordinatexamLabel.Text = 'Minimum horizontal coordinate: xa（m）';

            % Create MinimumhorizontalcoordinatexamSpinner
            app.MinimumhorizontalcoordinatexamSpinner = uispinner(app.ObservationrangesettingPanel);
            app.MinimumhorizontalcoordinatexamSpinner.Step = 0.5;
            app.MinimumhorizontalcoordinatexamSpinner.ValueChangedFcn = createCallbackFcn(app, @MinimumhorizontalcoordinatexamSpinnerValueChanging, true);
            app.MinimumhorizontalcoordinatexamSpinner.HorizontalAlignment = 'center';
            app.MinimumhorizontalcoordinatexamSpinner.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamSpinner.FontSize = 14;
            app.MinimumhorizontalcoordinatexamSpinner.Position = [286 192 73 22];
            app.MinimumhorizontalcoordinatexamSpinner.Value = -0.5;

            % Create MinimumverticalcoordinateyamLabel
            app.MinimumverticalcoordinateyamLabel = uilabel(app.ObservationrangesettingPanel);
            app.MinimumverticalcoordinateyamLabel.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamLabel.FontSize = 14;
            app.MinimumverticalcoordinateyamLabel.Position = [42 118 231 22];
            app.MinimumverticalcoordinateyamLabel.Text = 'Minimum vertical coordinate: ya（m）';

            % Create MinimumverticalcoordinateyamSpinner
            app.MinimumverticalcoordinateyamSpinner = uispinner(app.ObservationrangesettingPanel);
            app.MinimumverticalcoordinateyamSpinner.Step = 0.5;
            app.MinimumverticalcoordinateyamSpinner.ValueChangedFcn = createCallbackFcn(app, @MinimumverticalcoordinateyamSpinnerValueChanging, true);
            app.MinimumverticalcoordinateyamSpinner.HorizontalAlignment = 'center';
            app.MinimumverticalcoordinateyamSpinner.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamSpinner.FontSize = 14;
            app.MinimumverticalcoordinateyamSpinner.Position = [286 117 73 22];
            app.MinimumverticalcoordinateyamSpinner.Value = -0.5;

            % Create MaximumhorizontalcoordinatexbmLabel
            app.MaximumhorizontalcoordinatexbmLabel = uilabel(app.ObservationrangesettingPanel);
            app.MaximumhorizontalcoordinatexbmLabel.HorizontalAlignment = 'right';
            app.MaximumhorizontalcoordinatexbmLabel.FontName = 'Times New Roman';
            app.MaximumhorizontalcoordinatexbmLabel.FontSize = 14;
            app.MaximumhorizontalcoordinatexbmLabel.Position = [34 154 248 22];
            app.MaximumhorizontalcoordinatexbmLabel.Text = 'Maximum horizontal coordinate: xb（m）';

            % Create MaximumhorizontalcoordinatexbmSpinner
            app.MaximumhorizontalcoordinatexbmSpinner = uispinner(app.ObservationrangesettingPanel);
            app.MaximumhorizontalcoordinatexbmSpinner.Step = 0.5;
            app.MaximumhorizontalcoordinatexbmSpinner.ValueChangedFcn = createCallbackFcn(app, @MaximumhorizontalcoordinatexbmSpinnerValueChanging, true);
            app.MaximumhorizontalcoordinatexbmSpinner.HorizontalAlignment = 'center';
            app.MaximumhorizontalcoordinatexbmSpinner.FontSize = 14;
            app.MaximumhorizontalcoordinatexbmSpinner.Position = [286 152 73 22];
            app.MaximumhorizontalcoordinatexbmSpinner.Value = 0.5;

            % Create MaximumverticalcoordinateybmSpinnerLabel
            app.MaximumverticalcoordinateybmSpinnerLabel = uilabel(app.ObservationrangesettingPanel);
            app.MaximumverticalcoordinateybmSpinnerLabel.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinnerLabel.FontSize = 14;
            app.MaximumverticalcoordinateybmSpinnerLabel.Position = [42 83 234 22];
            app.MaximumverticalcoordinateybmSpinnerLabel.Text = 'Maximum vertical coordinate: yb（m）';

            % Create MaximumverticalcoordinateybmSpinner
            app.MaximumverticalcoordinateybmSpinner = uispinner(app.ObservationrangesettingPanel);
            app.MaximumverticalcoordinateybmSpinner.Step = 0.5;
            app.MaximumverticalcoordinateybmSpinner.ValueChangedFcn = createCallbackFcn(app, @MaximumverticalcoordinateybmSpinnerValueChanging, true);
            app.MaximumverticalcoordinateybmSpinner.HorizontalAlignment = 'center';
            app.MaximumverticalcoordinateybmSpinner.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinner.FontSize = 14;
            app.MaximumverticalcoordinateybmSpinner.Position = [286 77 73 22];
            app.MaximumverticalcoordinateybmSpinner.Value = 0.5;

            % Create NumberofequalpartsinthexaxisdirectionN1SpinnerLabel
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel = uilabel(app.ObservationrangesettingPanel);
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.FontSize = 14;
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.Position = [18 49 284 22];
            app.NumberofequalpartsinthexaxisdirectionN1SpinnerLabel.Text = 'Number of equal parts in the x-axis direction: N1';

            % Create NumberofequalpartsinthexaxisdirectionN1Spinner
            app.NumberofequalpartsinthexaxisdirectionN1Spinner = uispinner(app.ObservationrangesettingPanel);
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Step = 100;
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Limits = [0 Inf];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.ValueChangedFcn = createCallbackFcn(app, @NumberofequalpartsinthexaxisdirectionN1SpinnerValueChanging, true);
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.HorizontalAlignment = 'center';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.FontSize = 14;
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Position = [310 45 73 22];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner.Value = 1000;

            % Create NumberofequalpartsintheyaxisdirectionN2SpinnerLabel
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel = uilabel(app.ObservationrangesettingPanel);
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.FontSize = 14;
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.Position = [18 15 284 22];
            app.NumberofequalpartsintheyaxisdirectionN2SpinnerLabel.Text = 'Number of equal parts in the y-axis direction: N2';

            % Create NumberofequalpartsintheyaxisdirectionN2Spinner
            app.NumberofequalpartsintheyaxisdirectionN2Spinner = uispinner(app.ObservationrangesettingPanel);
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Step = 100;
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Limits = [0 Inf];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.ValueChangedFcn = createCallbackFcn(app, @NumberofequalpartsintheyaxisdirectionN2SpinnerValueChanging, true);
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.HorizontalAlignment = 'center';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.FontSize = 14;
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Position = [311 15 73 22];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner.Value = 1000;

            % Create PlottinginterferencefringesButton
            app.PlottinginterferencefringesButton = uibutton(app.Tab, 'push');
            app.PlottinginterferencefringesButton.ButtonPushedFcn = createCallbackFcn(app, @PlottinginterferencefringesButtonPushed, true);
            app.PlottinginterferencefringesButton.FontName = 'Times New Roman';
            app.PlottinginterferencefringesButton.FontSize = 14;
            app.PlottinginterferencefringesButton.Position = [58 292 172 25];
            app.PlottinginterferencefringesButton.Text = 'Plotting interference fringes';

            % Create PlottinglightintensitydistributionButton
            app.PlottinglightintensitydistributionButton = uibutton(app.Tab, 'push');
            app.PlottinglightintensitydistributionButton.ButtonPushedFcn = createCallbackFcn(app, @PlottinglightintensitydistributionButtonPushed, true);
            app.PlottinglightintensitydistributionButton.FontName = 'Times New Roman';
            app.PlottinglightintensitydistributionButton.FontSize = 14;
            app.PlottinglightintensitydistributionButton.Position = [562 293 209 25];
            app.PlottinglightintensitydistributionButton.Text = 'Plotting light intensity distribution';

            % Create ClearCoordinateSystemButton_2
            app.ClearCoordinateSystemButton_2 = uibutton(app.Tab, 'push');
            app.ClearCoordinateSystemButton_2.ButtonPushedFcn = createCallbackFcn(app, @ClearCoordinateSystemButton_2Pushed, true);
            app.ClearCoordinateSystemButton_2.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton_2.FontSize = 14;
            app.ClearCoordinateSystemButton_2.Position = [795 293 156 25];
            app.ClearCoordinateSystemButton_2.Text = 'Clear Coordinate System';

            % Create SaveImageAsButton_2
            app.SaveImageAsButton_2 = uibutton(app.Tab, 'push');
            app.SaveImageAsButton_2.ButtonPushedFcn = createCallbackFcn(app, @SaveImageAsButton_2Pushed, true);
            app.SaveImageAsButton_2.FontName = 'Times New Roman';
            app.SaveImageAsButton_2.FontSize = 14;
            app.SaveImageAsButton_2.Position = [949 415 102 26];
            app.SaveImageAsButton_2.Text = 'Save Image As';

            % Create ClearCoordinateSystemButton
            app.ClearCoordinateSystemButton = uibutton(app.Tab, 'push');
            app.ClearCoordinateSystemButton.ButtonPushedFcn = createCallbackFcn(app, @Button_2Pushed, true);
            app.ClearCoordinateSystemButton.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton.FontSize = 14;
            app.ClearCoordinateSystemButton.Position = [239 291 156 26];
            app.ClearCoordinateSystemButton.Text = 'Clear Coordinate System';

            % Create SaveImageAsButton
            app.SaveImageAsButton = uibutton(app.Tab, 'push');
            app.SaveImageAsButton.ButtonPushedFcn = createCallbackFcn(app, @Button_3Pushed, true);
            app.SaveImageAsButton.FontName = 'Times New Roman';
            app.SaveImageAsButton.FontSize = 14;
            app.SaveImageAsButton.Position = [405 292 99 26];
            app.SaveImageAsButton.Text = 'Save Image As';

            % Create DViewButton
            app.DViewButton = uibutton(app.Tab, 'push');
            app.DViewButton.ButtonPushedFcn = createCallbackFcn(app, @DViewButtonPushed, true);
            app.DViewButton.FontName = 'Times New Roman';
            app.DViewButton.FontSize = 14;
            app.DViewButton.Position = [951 574 100 25];
            app.DViewButton.Text = '3D View';

            % Create XviewButton
            app.XviewButton = uibutton(app.Tab, 'push');
            app.XviewButton.ButtonPushedFcn = createCallbackFcn(app, @XviewButtonPushed, true);
            app.XviewButton.FontName = 'Times New Roman';
            app.XviewButton.FontSize = 14;
            app.XviewButton.Position = [951 520 100 25];
            app.XviewButton.Text = 'X-view';

            % Create YViewButton
            app.YViewButton = uibutton(app.Tab, 'push');
            app.YViewButton.ButtonPushedFcn = createCallbackFcn(app, @YViewButtonPushed, true);
            app.YViewButton.FontName = 'Times New Roman';
            app.YViewButton.FontSize = 14;
            app.YViewButton.Position = [952 466 100 25];
            app.YViewButton.Text = 'Y-View';

            % Create Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel = uilabel(app.Tab);
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.FontName = 'Times New Roman';
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.FontSize = 16;
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.Tooltip = {'Satisfy the condition D>>d'};
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.Position = [316 261 571 22];
            app.Thestripesmoveupdownby0moverallandtranslatebyabout0cyclesLabel.Text = 'The stripes move up/down by 0 m overall, and translate by about 0 cycles';

            % Create StripespacingXmLabel
            app.StripespacingXmLabel = uilabel(app.Tab);
            app.StripespacingXmLabel.FontName = 'Times New Roman';
            app.StripespacingXmLabel.FontSize = 16;
            app.StripespacingXmLabel.Tooltip = {'Satisfy the condition D>>d'};
            app.StripespacingXmLabel.Position = [11 260 296 24];
            app.StripespacingXmLabel.Text = 'Stripe spacing△X（m）：';

            % Create SimulationexperimentofdoubleslitinterferenceofcomplexlightTab
            app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab = uitab(app.TabGroup);
            app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab.Title = 'Simulation experiment of double-slit interference of complex light';

            % Create UIAxes2
            app.UIAxes2 = uiaxes(app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab);
            title(app.UIAxes2, 'Title')
            xlabel(app.UIAxes2, 'X')
            ylabel(app.UIAxes2, 'Y')
            zlabel(app.UIAxes2, 'Z')
            app.UIAxes2.FontName = 'Times New Roman';
            app.UIAxes2.Position = [589 407 462 230];

            % Create UIAxes2_2
            app.UIAxes2_2 = uiaxes(app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab);
            title(app.UIAxes2_2, 'Title')
            xlabel(app.UIAxes2_2, 'X')
            ylabel(app.UIAxes2_2, 'Y')
            zlabel(app.UIAxes2_2, 'Z')
            app.UIAxes2_2.FontName = 'Times New Roman';
            app.UIAxes2_2.Position = [588 169 462 230];

            % Create ExperimentalparametersettingPanel_2
            app.ExperimentalparametersettingPanel_2 = uipanel(app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab);
            app.ExperimentalparametersettingPanel_2.Tooltip = {'输入值必须为正数'};
            app.ExperimentalparametersettingPanel_2.BorderType = 'none';
            app.ExperimentalparametersettingPanel_2.TitlePosition = 'centertop';
            app.ExperimentalparametersettingPanel_2.Title = 'Experimental parameter setting';
            app.ExperimentalparametersettingPanel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ExperimentalparametersettingPanel_2.FontName = 'Times New Roman';
            app.ExperimentalparametersettingPanel_2.FontWeight = 'bold';
            app.ExperimentalparametersettingPanel_2.FontSize = 16;
            app.ExperimentalparametersettingPanel_2.Position = [2 10 561 641];

            % Create HoledistancedmmLabel_2
            app.HoledistancedmmLabel_2 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.HoledistancedmmLabel_2.HorizontalAlignment = 'right';
            app.HoledistancedmmLabel_2.FontName = 'Times New Roman';
            app.HoledistancedmmLabel_2.FontSize = 14;
            app.HoledistancedmmLabel_2.Position = [4 588 260 22];
            app.HoledistancedmmLabel_2.Text = 'Distance between the double slits: d（mm）';

            % Create DistancebetweenthedoubleslitsdmmEditField_2
            app.DistancebetweenthedoubleslitsdmmEditField_2 = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.DistancebetweenthedoubleslitsdmmEditField_2.Limits = [0 Inf];
            app.DistancebetweenthedoubleslitsdmmEditField_2.HorizontalAlignment = 'center';
            app.DistancebetweenthedoubleslitsdmmEditField_2.FontName = 'Times New Roman';
            app.DistancebetweenthedoubleslitsdmmEditField_2.FontSize = 14;
            app.DistancebetweenthedoubleslitsdmmEditField_2.Tooltip = {'The input value must be a positive number'};
            app.DistancebetweenthedoubleslitsdmmEditField_2.Position = [272 588 70 22];
            app.DistancebetweenthedoubleslitsdmmEditField_2.Value = 0.1;

            % Create DmEditField_2Label
            app.DmEditField_2Label = uilabel(app.ExperimentalparametersettingPanel_2);
            app.DmEditField_2Label.HorizontalAlignment = 'right';
            app.DmEditField_2Label.FontName = 'Times New Roman';
            app.DmEditField_2Label.FontSize = 14;
            app.DmEditField_2Label.Position = [-2 566 478 22];
            app.DmEditField_2Label.Text = 'The vertical distance between the observation screen and the double slits: D（m）';

            % Create DmEditField_2
            app.DmEditField_2 = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.DmEditField_2.Limits = [0 Inf];
            app.DmEditField_2.HorizontalAlignment = 'center';
            app.DmEditField_2.FontName = 'Times New Roman';
            app.DmEditField_2.FontSize = 14;
            app.DmEditField_2.Tooltip = {'The input value must be a positive number'};
            app.DmEditField_2.Position = [478 566 70 22];
            app.DmEditField_2.Value = 20;

            % Create nmLabel
            app.nmLabel = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel.HorizontalAlignment = 'right';
            app.nmLabel.FontName = 'Times New Roman';
            app.nmLabel.FontSize = 14;
            app.nmLabel.Position = [6 538 240 22];
            app.nmLabel.Text = 'Red light wavelength range：645-760nm';

            % Create Redlightwavelengthrange645760nmEditField
            app.Redlightwavelengthrange645760nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Redlightwavelengthrange645760nmEditField.Limits = [645 760];
            app.Redlightwavelengthrange645760nmEditField.HorizontalAlignment = 'center';
            app.Redlightwavelengthrange645760nmEditField.FontName = 'Times New Roman';
            app.Redlightwavelengthrange645760nmEditField.FontSize = 14;
            app.Redlightwavelengthrange645760nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Redlightwavelengthrange645760nmEditField.Position = [277 538 100 22];
            app.Redlightwavelengthrange645760nmEditField.Value = 645;

            % Create Label
            app.Label = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label.HorizontalAlignment = 'right';
            app.Label.FontName = 'Times New Roman';
            app.Label.FontSize = 14;
            app.Label.Position = [7 513 138 22];
            app.Label.Text = 'Red light intensity ratio';

            % Create RedlightintensityratioSlider
            app.RedlightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.RedlightintensityratioSlider.Limits = [0 1];
            app.RedlightintensityratioSlider.FontName = 'Times New Roman';
            app.RedlightintensityratioSlider.FontSize = 14;
            app.RedlightintensityratioSlider.Position = [196 522 150 3];
            app.RedlightintensityratioSlider.Value = 0.5;

            % Create nmLabel_2
            app.nmLabel_2 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_2.HorizontalAlignment = 'right';
            app.nmLabel_2.FontName = 'Times New Roman';
            app.nmLabel_2.FontSize = 14;
            app.nmLabel_2.Position = [3 464 260 22];
            app.nmLabel_2.Text = 'Orange light wavelength range：600-645nm';

            % Create Orangelightwavelengthrange600645nmEditField
            app.Orangelightwavelengthrange600645nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Orangelightwavelengthrange600645nmEditField.Limits = [600 645];
            app.Orangelightwavelengthrange600645nmEditField.HorizontalAlignment = 'center';
            app.Orangelightwavelengthrange600645nmEditField.FontName = 'Times New Roman';
            app.Orangelightwavelengthrange600645nmEditField.FontSize = 14;
            app.Orangelightwavelengthrange600645nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Orangelightwavelengthrange600645nmEditField.Position = [278 464 100 22];
            app.Orangelightwavelengthrange600645nmEditField.Value = 600;

            % Create Label_2
            app.Label_2 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_2.HorizontalAlignment = 'right';
            app.Label_2.FontName = 'Times New Roman';
            app.Label_2.FontSize = 14;
            app.Label_2.Position = [7 436 156 22];
            app.Label_2.Text = 'Orange light intensity ratio';

            % Create OrangelightintensityratioSlider
            app.OrangelightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.OrangelightintensityratioSlider.Limits = [0 1];
            app.OrangelightintensityratioSlider.FontName = 'Times New Roman';
            app.OrangelightintensityratioSlider.FontSize = 14;
            app.OrangelightintensityratioSlider.Position = [196 446 150 3];
            app.OrangelightintensityratioSlider.Value = 0.5;

            % Create nmLabel_3
            app.nmLabel_3 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_3.HorizontalAlignment = 'right';
            app.nmLabel_3.FontName = 'Times New Roman';
            app.nmLabel_3.FontSize = 14;
            app.nmLabel_3.Position = [4 389 258 22];
            app.nmLabel_3.Text = 'Yellow light wavelength range：580-600nm';

            % Create Yellowlightwavelengthrange580600nmEditField
            app.Yellowlightwavelengthrange580600nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Yellowlightwavelengthrange580600nmEditField.Limits = [580 600];
            app.Yellowlightwavelengthrange580600nmEditField.HorizontalAlignment = 'center';
            app.Yellowlightwavelengthrange580600nmEditField.FontName = 'Times New Roman';
            app.Yellowlightwavelengthrange580600nmEditField.FontSize = 14;
            app.Yellowlightwavelengthrange580600nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Yellowlightwavelengthrange580600nmEditField.Position = [277 389 100 22];
            app.Yellowlightwavelengthrange580600nmEditField.Value = 580;

            % Create Label_3
            app.Label_3 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_3.HorizontalAlignment = 'right';
            app.Label_3.FontName = 'Times New Roman';
            app.Label_3.FontSize = 14;
            app.Label_3.Position = [7 363 155 22];
            app.Label_3.Text = 'Yellow light intensity ratio';

            % Create YellowlightintensityratioSlider
            app.YellowlightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.YellowlightintensityratioSlider.Limits = [0 1];
            app.YellowlightintensityratioSlider.FontName = 'Times New Roman';
            app.YellowlightintensityratioSlider.FontSize = 14;
            app.YellowlightintensityratioSlider.Position = [196 373 150 3];
            app.YellowlightintensityratioSlider.Value = 0.5;

            % Create nmLabel_4
            app.nmLabel_4 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_4.HorizontalAlignment = 'right';
            app.nmLabel_4.FontName = 'Times New Roman';
            app.nmLabel_4.FontSize = 14;
            app.nmLabel_4.Position = [5 317 252 22];
            app.nmLabel_4.Text = 'Green light wavelength range：510-580nm';

            % Create Greenlightwavelengthrange510580nmEditField
            app.Greenlightwavelengthrange510580nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Greenlightwavelengthrange510580nmEditField.Limits = [510 580];
            app.Greenlightwavelengthrange510580nmEditField.HorizontalAlignment = 'center';
            app.Greenlightwavelengthrange510580nmEditField.FontName = 'Times New Roman';
            app.Greenlightwavelengthrange510580nmEditField.FontSize = 14;
            app.Greenlightwavelengthrange510580nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Greenlightwavelengthrange510580nmEditField.Position = [277 317 100 22];
            app.Greenlightwavelengthrange510580nmEditField.Value = 510;

            % Create Label_5
            app.Label_5 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_5.HorizontalAlignment = 'right';
            app.Label_5.FontName = 'Times New Roman';
            app.Label_5.FontSize = 14;
            app.Label_5.Position = [8 294 149 22];
            app.Label_5.Text = 'Green light intensity ratio';

            % Create GreenlightintensityratioSlider
            app.GreenlightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.GreenlightintensityratioSlider.Limits = [0 1];
            app.GreenlightintensityratioSlider.FontName = 'Times New Roman';
            app.GreenlightintensityratioSlider.FontSize = 14;
            app.GreenlightintensityratioSlider.Position = [196 306 150 3];
            app.GreenlightintensityratioSlider.Value = 0.5;

            % Create nmLabel_5
            app.nmLabel_5 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_5.HorizontalAlignment = 'right';
            app.nmLabel_5.FontName = 'Times New Roman';
            app.nmLabel_5.FontSize = 14;
            app.nmLabel_5.Position = [6 241 247 22];
            app.nmLabel_5.Text = 'Cyan light wavelength range：490-510nm';

            % Create Cyanlightwavelengthrange490510nmEditField
            app.Cyanlightwavelengthrange490510nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Cyanlightwavelengthrange490510nmEditField.Limits = [490 510];
            app.Cyanlightwavelengthrange490510nmEditField.HorizontalAlignment = 'center';
            app.Cyanlightwavelengthrange490510nmEditField.FontName = 'Times New Roman';
            app.Cyanlightwavelengthrange490510nmEditField.FontSize = 14;
            app.Cyanlightwavelengthrange490510nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Cyanlightwavelengthrange490510nmEditField.Position = [278 241 100 22];
            app.Cyanlightwavelengthrange490510nmEditField.Value = 490;

            % Create Label_6
            app.Label_6 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_6.HorizontalAlignment = 'right';
            app.Label_6.FontName = 'Times New Roman';
            app.Label_6.FontSize = 14;
            app.Label_6.Position = [8 220 145 22];
            app.Label_6.Text = 'Cyan light intensity ratio';

            % Create CyanlightintensityratioSlider
            app.CyanlightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.CyanlightintensityratioSlider.Limits = [0 1];
            app.CyanlightintensityratioSlider.FontName = 'Times New Roman';
            app.CyanlightintensityratioSlider.FontSize = 14;
            app.CyanlightintensityratioSlider.Position = [196 230 150 3];
            app.CyanlightintensityratioSlider.Value = 0.5;

            % Create nmLabel_6
            app.nmLabel_6 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_6.HorizontalAlignment = 'right';
            app.nmLabel_6.FontName = 'Times New Roman';
            app.nmLabel_6.FontSize = 14;
            app.nmLabel_6.Position = [6 175 244 22];
            app.nmLabel_6.Text = 'Blue light wavelength range：440-490nm';

            % Create Bluelightwavelengthrange440490nmEditField
            app.Bluelightwavelengthrange440490nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Bluelightwavelengthrange440490nmEditField.Limits = [440 490];
            app.Bluelightwavelengthrange440490nmEditField.HorizontalAlignment = 'center';
            app.Bluelightwavelengthrange440490nmEditField.FontName = 'Times New Roman';
            app.Bluelightwavelengthrange440490nmEditField.FontSize = 14;
            app.Bluelightwavelengthrange440490nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Bluelightwavelengthrange440490nmEditField.Position = [277 175 100 22];
            app.Bluelightwavelengthrange440490nmEditField.Value = 440;

            % Create Label_7
            app.Label_7 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_7.HorizontalAlignment = 'right';
            app.Label_7.FontName = 'Times New Roman';
            app.Label_7.FontSize = 14;
            app.Label_7.Position = [8 146 142 22];
            app.Label_7.Text = 'Blue light intensity ratio';

            % Create BluelightintensityratioSlider
            app.BluelightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.BluelightintensityratioSlider.Limits = [0 1];
            app.BluelightintensityratioSlider.FontName = 'Times New Roman';
            app.BluelightintensityratioSlider.FontSize = 14;
            app.BluelightintensityratioSlider.Position = [196 156 150 3];
            app.BluelightintensityratioSlider.Value = 0.5;

            % Create nmLabel_7
            app.nmLabel_7 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.nmLabel_7.HorizontalAlignment = 'right';
            app.nmLabel_7.FontName = 'Times New Roman';
            app.nmLabel_7.FontSize = 14;
            app.nmLabel_7.Position = [6 97 254 22];
            app.nmLabel_7.Text = 'Purple light wavelength range：380-440nm';

            % Create Purplelightwavelengthrange380440nmEditField
            app.Purplelightwavelengthrange380440nmEditField = uieditfield(app.ExperimentalparametersettingPanel_2, 'numeric');
            app.Purplelightwavelengthrange380440nmEditField.Limits = [380 440];
            app.Purplelightwavelengthrange380440nmEditField.HorizontalAlignment = 'center';
            app.Purplelightwavelengthrange380440nmEditField.FontName = 'Times New Roman';
            app.Purplelightwavelengthrange380440nmEditField.FontSize = 14;
            app.Purplelightwavelengthrange380440nmEditField.Tooltip = {'The input value must be a positive number'};
            app.Purplelightwavelengthrange380440nmEditField.Position = [277 99 100 22];
            app.Purplelightwavelengthrange380440nmEditField.Value = 380;

            % Create Label_8
            app.Label_8 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_8.HorizontalAlignment = 'right';
            app.Label_8.FontName = 'Times New Roman';
            app.Label_8.FontSize = 14;
            app.Label_8.Position = [8 68 152 22];
            app.Label_8.Text = 'Purple light intensity ratio';

            % Create PurplelightintensityratioSlider
            app.PurplelightintensityratioSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.PurplelightintensityratioSlider.Limits = [0 1];
            app.PurplelightintensityratioSlider.FontName = 'Times New Roman';
            app.PurplelightintensityratioSlider.FontSize = 14;
            app.PurplelightintensityratioSlider.Position = [196 78 150 3];
            app.PurplelightintensityratioSlider.Value = 0.5;

            % Create Label_4
            app.Label_4 = uilabel(app.ExperimentalparametersettingPanel_2);
            app.Label_4.HorizontalAlignment = 'right';
            app.Label_4.FontName = 'Times New Roman';
            app.Label_4.FontSize = 14;
            app.Label_4.Position = [7 23 190 22];
            app.Label_4.Text = 'Overall image brightness (times)';

            % Create OverallimagebrightnesstimesSlider
            app.OverallimagebrightnesstimesSlider = uislider(app.ExperimentalparametersettingPanel_2);
            app.OverallimagebrightnesstimesSlider.Limits = [1 2];
            app.OverallimagebrightnesstimesSlider.FontName = 'Times New Roman';
            app.OverallimagebrightnesstimesSlider.FontSize = 14;
            app.OverallimagebrightnesstimesSlider.Position = [218 33 150 3];
            app.OverallimagebrightnesstimesSlider.Value = 1.2;

            % Create SaveImageAsButton_3
            app.SaveImageAsButton_3 = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.SaveImageAsButton_3.ButtonPushedFcn = createCallbackFcn(app, @SaveImageAsButton_3Pushed, true);
            app.SaveImageAsButton_3.FontName = 'Times New Roman';
            app.SaveImageAsButton_3.FontSize = 14;
            app.SaveImageAsButton_3.Position = [423 479 100 25];
            app.SaveImageAsButton_3.Text = 'Save Image As';

            % Create ClearCoordinateSystemButton_3
            app.ClearCoordinateSystemButton_3 = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.ClearCoordinateSystemButton_3.ButtonPushedFcn = createCallbackFcn(app, @ClearCoordinateSystemButton_3Pushed, true);
            app.ClearCoordinateSystemButton_3.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton_3.FontSize = 14;
            app.ClearCoordinateSystemButton_3.Position = [393 431 156 25];
            app.ClearCoordinateSystemButton_3.Text = 'Clear Coordinate System';

            % Create InterferencefringeimageButton
            app.InterferencefringeimageButton = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.InterferencefringeimageButton.ButtonPushedFcn = createCallbackFcn(app, @InterferencefringeimageButtonPushed, true);
            app.InterferencefringeimageButton.FontName = 'Times New Roman';
            app.InterferencefringeimageButton.FontSize = 14;
            app.InterferencefringeimageButton.Position = [394 527 157 25];
            app.InterferencefringeimageButton.Text = 'Interference fringe image';

            % Create TotallightintensitydistributioncurveButton
            app.TotallightintensitydistributioncurveButton = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.TotallightintensitydistributioncurveButton.ButtonPushedFcn = createCallbackFcn(app, @TotallightintensitydistributioncurveButtonPushed, true);
            app.TotallightintensitydistributioncurveButton.FontName = 'Times New Roman';
            app.TotallightintensitydistributioncurveButton.FontSize = 14;
            app.TotallightintensitydistributioncurveButton.Position = [407 343 128 42];
            app.TotallightintensitydistributioncurveButton.Text = {'Total light intensity '; 'distribution curve'};

            % Create LightintensitydistributioncurveofeachbandButton
            app.LightintensitydistributioncurveofeachbandButton = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.LightintensitydistributioncurveofeachbandButton.ButtonPushedFcn = createCallbackFcn(app, @LightintensitydistributioncurveofeachbandButtonPushed, true);
            app.LightintensitydistributioncurveofeachbandButton.FontName = 'Times New Roman';
            app.LightintensitydistributioncurveofeachbandButton.FontSize = 14;
            app.LightintensitydistributioncurveofeachbandButton.Position = [387 276 169 42];
            app.LightintensitydistributioncurveofeachbandButton.Text = {'Light intensity distribution '; 'curve of each band'};

            % Create SaveImageAsButton_4
            app.SaveImageAsButton_4 = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.SaveImageAsButton_4.ButtonPushedFcn = createCallbackFcn(app, @SaveImageAsButton_4Pushed, true);
            app.SaveImageAsButton_4.FontName = 'Times New Roman';
            app.SaveImageAsButton_4.FontSize = 14;
            app.SaveImageAsButton_4.Position = [419 231 100 25];
            app.SaveImageAsButton_4.Text = 'Save Image As';

            % Create ClearCoordinateSystemButton_4
            app.ClearCoordinateSystemButton_4 = uibutton(app.ExperimentalparametersettingPanel_2, 'push');
            app.ClearCoordinateSystemButton_4.ButtonPushedFcn = createCallbackFcn(app, @ClearCoordinateSystemButton_4Pushed, true);
            app.ClearCoordinateSystemButton_4.FontName = 'Times New Roman';
            app.ClearCoordinateSystemButton_4.FontSize = 14;
            app.ClearCoordinateSystemButton_4.Position = [391 184 156 25];
            app.ClearCoordinateSystemButton_4.Text = 'Clear Coordinate System';

            % Create ObservationrangesettingPanel_2
            app.ObservationrangesettingPanel_2 = uipanel(app.SimulationexperimentofdoubleslitinterferenceofcomplexlightTab);
            app.ObservationrangesettingPanel_2.Tooltip = {''};
            app.ObservationrangesettingPanel_2.BorderType = 'none';
            app.ObservationrangesettingPanel_2.TitlePosition = 'centertop';
            app.ObservationrangesettingPanel_2.Title = 'Observation range setting';
            app.ObservationrangesettingPanel_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ObservationrangesettingPanel_2.FontName = 'Times New Roman';
            app.ObservationrangesettingPanel_2.FontWeight = 'bold';
            app.ObservationrangesettingPanel_2.FontSize = 16;
            app.ObservationrangesettingPanel_2.Position = [381 10 682 155];

            % Create MinimumhorizontalcoordinatexamSpinner_2Label
            app.MinimumhorizontalcoordinatexamSpinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.MinimumhorizontalcoordinatexamSpinner_2Label.HorizontalAlignment = 'right';
            app.MinimumhorizontalcoordinatexamSpinner_2Label.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamSpinner_2Label.Position = [34 88 210 22];
            app.MinimumhorizontalcoordinatexamSpinner_2Label.Text = 'Minimum horizontal coordinate: xa（m）';

            % Create MinimumhorizontalcoordinatexamSpinner_2
            app.MinimumhorizontalcoordinatexamSpinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.MinimumhorizontalcoordinatexamSpinner_2.Step = 0.5;
            app.MinimumhorizontalcoordinatexamSpinner_2.HorizontalAlignment = 'center';
            app.MinimumhorizontalcoordinatexamSpinner_2.FontName = 'Times New Roman';
            app.MinimumhorizontalcoordinatexamSpinner_2.Position = [261 88 73 22];
            app.MinimumhorizontalcoordinatexamSpinner_2.Value = -0.5;

            % Create MinimumverticalcoordinateyamSpinner_2Label
            app.MinimumverticalcoordinateyamSpinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.MinimumverticalcoordinateyamSpinner_2Label.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamSpinner_2Label.Position = [40 52 198 22];
            app.MinimumverticalcoordinateyamSpinner_2Label.Text = 'Minimum vertical coordinate: ya（m）';

            % Create MinimumverticalcoordinateyamSpinner_2
            app.MinimumverticalcoordinateyamSpinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.MinimumverticalcoordinateyamSpinner_2.Step = 0.5;
            app.MinimumverticalcoordinateyamSpinner_2.HorizontalAlignment = 'center';
            app.MinimumverticalcoordinateyamSpinner_2.FontName = 'Times New Roman';
            app.MinimumverticalcoordinateyamSpinner_2.Position = [261 54 73 22];
            app.MinimumverticalcoordinateyamSpinner_2.Value = -0.5;

            % Create MaximumhorizontalcoordinatexbmSpinner_2Label
            app.MaximumhorizontalcoordinatexbmSpinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.MaximumhorizontalcoordinatexbmSpinner_2Label.HorizontalAlignment = 'right';
            app.MaximumhorizontalcoordinatexbmSpinner_2Label.FontName = 'Times New Roman';
            app.MaximumhorizontalcoordinatexbmSpinner_2Label.Position = [368 87 213 22];
            app.MaximumhorizontalcoordinatexbmSpinner_2Label.Text = 'Maximum horizontal coordinate: xb（m）';

            % Create MaximumhorizontalcoordinatexbmSpinner_2
            app.MaximumhorizontalcoordinatexbmSpinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.MaximumhorizontalcoordinatexbmSpinner_2.Step = 0.5;
            app.MaximumhorizontalcoordinatexbmSpinner_2.HorizontalAlignment = 'center';
            app.MaximumhorizontalcoordinatexbmSpinner_2.FontName = 'Times New Roman';
            app.MaximumhorizontalcoordinatexbmSpinner_2.Position = [596 87 73 22];
            app.MaximumhorizontalcoordinatexbmSpinner_2.Value = 0.5;

            % Create MaximumverticalcoordinateybmSpinner_2Label
            app.MaximumverticalcoordinateybmSpinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.MaximumverticalcoordinateybmSpinner_2Label.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinner_2Label.Position = [375 53 200 22];
            app.MaximumverticalcoordinateybmSpinner_2Label.Text = 'Maximum vertical coordinate: yb（m）';

            % Create MaximumverticalcoordinateybmSpinner_2
            app.MaximumverticalcoordinateybmSpinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.MaximumverticalcoordinateybmSpinner_2.Step = 0.5;
            app.MaximumverticalcoordinateybmSpinner_2.HorizontalAlignment = 'center';
            app.MaximumverticalcoordinateybmSpinner_2.FontName = 'Times New Roman';
            app.MaximumverticalcoordinateybmSpinner_2.Position = [596 51 73 22];
            app.MaximumverticalcoordinateybmSpinner_2.Value = 0.5;

            % Create NumberofequalpartsinthexaxisdirectionN1Spinner_2Label
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2Label.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2Label.Position = [17 18 244 22];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2Label.Text = 'Number of equal parts in the x-axis direction: N1';

            % Create NumberofequalpartsinthexaxisdirectionN1Spinner_2
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.Step = 100;
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.Limits = [0 Inf];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.HorizontalAlignment = 'center';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.FontName = 'Times New Roman';
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.Position = [261 18 73 22];
            app.NumberofequalpartsinthexaxisdirectionN1Spinner_2.Value = 1000;

            % Create NumberofequalpartsintheyaxisdirectionN2Spinner_2Label
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2Label = uilabel(app.ObservationrangesettingPanel_2);
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2Label.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2Label.Position = [352 18 244 22];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2Label.Text = 'Number of equal parts in the y-axis direction: N2';

            % Create NumberofequalpartsintheyaxisdirectionN2Spinner_2
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2 = uispinner(app.ObservationrangesettingPanel_2);
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.Step = 100;
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.Limits = [0 Inf];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.HorizontalAlignment = 'center';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.FontName = 'Times New Roman';
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.Position = [597 18 73 22];
            app.NumberofequalpartsintheyaxisdirectionN2Spinner_2.Value = 1000;

            % Show the figure after all components are created
            app.gansheUIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = ganshe1_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.gansheUIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.gansheUIFigure)
        end
    end
end