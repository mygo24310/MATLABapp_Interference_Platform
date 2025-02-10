classdef total_app_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure     matlab.ui.Figure
        MATLABLabel  matlab.ui.control.Label
        MultiholeinterferenceExperimentButton  matlab.ui.control.Button
        DoubleSlitinterferenceExperimentButton  matlab.ui.control.Button
    end

    
    methods (Access = private)
        
        function Close(app, name)
            app.UIFigure.Visible = 'on';
            delete(name);
        end
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            % Center the app interface on the screen
            Position_Screen = get(0,'ScreenSize');% Get screen size
            Position_App = app.UIFigure.Position;
            Position_App(1) = (Position_Screen(3)-Position_App(3))/2;
            Position_App(2) = (Position_Screen(4)-Position_App(4))/2;
            app.UIFigure.Position = Position_App;
        end

        % Button pushed function: DoubleSlitinterferenceExperimentButton
        function DoubleSlitinterferenceExperimentButtonPushed(app, event)
            exp1 = ganshe1();  % Create Experiment 1 App
            exp1.gansheUIFigure.Visible = 'on';  % Show Experiment 1 interface
        end

        % Button pushed function: MultiholeinterferenceExperimentButton
        function MultiholeinterferenceExperimentButtonPushed(app, event)
            exp2 = ganshe2();  % Create Experiment 2 App
            exp2.UIFigure.Visible = 'on';  % Show Experiment 2 interface
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Color = [0.9412 0.9412 0.9412];
            app.UIFigure.Position = [100 100 649 487];
            app.UIFigure.Name = 'MATLAB App';

            % Create DoubleSlitinterferenceExperimentButton
            app.DoubleSlitinterferenceExperimentButton = uibutton(app.UIFigure, 'push');
            app.DoubleSlitinterferenceExperimentButton.ButtonPushedFcn = createCallbackFcn(app, @DoubleSlitinterferenceExperimentButtonPushed, true);
            app.DoubleSlitinterferenceExperimentButton.BackgroundColor = [0.0745 0.6235 1];
            app.DoubleSlitinterferenceExperimentButton.FontName = 'Times New Roman';
            app.DoubleSlitinterferenceExperimentButton.FontSize = 24;
            app.DoubleSlitinterferenceExperimentButton.FontWeight = 'bold';
            app.DoubleSlitinterferenceExperimentButton.FontColor = [1 1 1];
            app.DoubleSlitinterferenceExperimentButton.Position = [108 238 431 51];
            app.DoubleSlitinterferenceExperimentButton.Text = 'Double-Slit interference Experiment';

            % Create MultiholeinterferenceExperimentButton
            app.MultiholeinterferenceExperimentButton = uibutton(app.UIFigure, 'push');
            app.MultiholeinterferenceExperimentButton.ButtonPushedFcn = createCallbackFcn(app, @MultiholeinterferenceExperimentButtonPushed, true);
            app.MultiholeinterferenceExperimentButton.BackgroundColor = [0.0745 0.6235 1];
            app.MultiholeinterferenceExperimentButton.FontName = 'Times New Roman';
            app.MultiholeinterferenceExperimentButton.FontSize = 24;
            app.MultiholeinterferenceExperimentButton.FontWeight = 'bold';
            app.MultiholeinterferenceExperimentButton.FontColor = [1 1 1];
            app.MultiholeinterferenceExperimentButton.Position = [110 115 431 51];
            app.MultiholeinterferenceExperimentButton.Text = 'Multi-hole interference Experiment';

            % Create MATLABLabel
            app.MATLABLabel = uilabel(app.UIFigure);
            app.MATLABLabel.BackgroundColor = [0.3922 0.698 0.8196];
            app.MATLABLabel.HorizontalAlignment = 'center';
            app.MATLABLabel.FontName = 'Times New Roman';
            app.MATLABLabel.FontSize = 32;
            app.MATLABLabel.FontWeight = 'bold';
            app.MATLABLabel.Position = [-2 369 652 118];
            app.MATLABLabel.Text = {'MATLAB-based virtual simulation '; 'teaching platform for double-slit interference '; 'and multi-hole interference'};

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = total_app_exported

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