USE [AdventureworksDW2016]
GO

CREATE FUNCTION [dbo].[TranslateToMDX]
(
	@expression nvarchar(255)
)
RETURNS nvarchar(255)
AS
BEGIN

	SET @expression = REPLACE( @expression, '''', '' )

	SELECT @expression =
		CASE
			WHEN LEFT( @expression, 1 ) = '#' THEN 
			CASE
				WHEN CHARINDEX( '=', @expression ) > 0 THEN
				CASE
					WHEN LEFT( @expression, CHARINDEX( '=', @expression ) - 1 ) = REPLACE( d.Token, '''', '' ) THEN
					REPLACE( d.MDX_Expression, d.Token, RIGHT( @expression, LEN ( @expression ) - CHARINDEX( '=', @expression ) ) )
				ELSE
					@expression
				END
			END
			ELSE REPLACE( @expression, d.Token, d.MDX_Expression )
		END
    FROM [dbo].[vMDXDictionary] d;

	RETURN @expression

END
GO

