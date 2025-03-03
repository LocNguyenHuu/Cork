//
//  Package List Item.swift
//  Cork
//
//  Created by David Bureš on 03.07.2022.
//

import SwiftUI

struct PackageListItem: View
{
    var packageItem: BrewPackage

    var body: some View
    {
        HStack
        {
            HStack(alignment: .firstTextBaseline)
            {
                
                if packageItem.isTagged
                {
                    PillText(text: packageItem.name, color: .red)
                }
                else
                {
                    Text(packageItem.name)
                }
                
                Text(returnFormattedVersions(packageItem.versions))
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
